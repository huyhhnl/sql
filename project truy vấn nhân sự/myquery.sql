-- 1. Truy vấn first_name, last_name, job_id và salary của các nhân viên có tên bắt đầu bằng chữ “S”
SELECT 
    first_name,
    last_name,
    job_id,
    salary
FROM employees
WHERE first_name LIKE 'S%';
-- 2. Viết truy vấn để tìm các nhân viên có số lương (salary) cao nhất
SELECT 
    employee_id,
    first_name,
    last_name,
    job_id,
    salary
FROM employees
WHERE salary = 
(
    SELECT
        MAX(salary)
    FROM employees
);
/* 3. Viết truy vấn để tìm các nhân viên có số lương lớn thứ hai. Ví dụ có 5 nhân viên có mức lương lần lượt là 
4, 4, 3, 3, 2 thì kết quả  đúng của mức lương lớn thứ hai sẽ là 3,3*/
SELECT 
    employee_id,
    first_name,
    last_name,
    job_id,
    salary
FROM employees
WHERE salary = 
(
    SELECT
        DISTINCT(salary)
    FROM employees
    ORDER BY salary DESC
    LIMIT 1,1
);
-- 4. Viết truy vấn để tìm các nhân viên có số lương lớn thứ ba. Tương tự như yêu cầu 3
SELECT 
    employee_id,
    first_name,
    last_name,
    job_id,
    salary
FROM employees
WHERE salary = 
(
    SELECT
        DISTINCT(salary)
    FROM employees
    ORDER BY salary DESC
    LIMIT 2,1
);
/* 5. Viết truy vấn để hiển thị mức lương của nhân viên cùng với người quản lý tương ứng, tên nhân viên và quản lý kết
hợp từ first_name và last_name */
SELECT
    CONCAT(m.first_name, ' ', m.last_name) as manager,
    m.salary as mgr_sal,
    CONCAT(e.first_name, ' ', e.last_name) as employee,
    e.salary as emp_sal
FROM employees as e 
JOIN employees as m ON m.employee_id = e.manager_id;
/* 6. Viết truy vấn để tìm số lượng nhân viên cần quản lý của mỗi người quản lý, tên quản lý kết hợp từ first_name 
và last_name */
SELECT   
    e.manager_id  AS employee_id,
    CONCAT(m.first_name, ' ', m.last_name ) as manager_name,
    COUNT(*) AS number_of_reportees
FROM employees as e
JOIN employees as m ON e.manager_id = m.employee_id
WHERE e.manager_id IS NOT NULL
GROUP BY e.manager_id, manager_name
ORDER BY number_of_reportees DESC;
-- 7. Viết truy vấn để tìm được số lượng nhân viên trong mỗi phòng ban sắp xếp theo thứ tự số nhân viên giảm dần
SELECT
    department_name,
    COUNT(*) AS emp_count
FROM employees
JOIN departments ON employees.department_id = departments.department_id
GROUP BY department_name
ORDER BY emp_count DESC;

/* 8. Viết truy vấn để tìm số lượng nhân viên được thuê trong mỗi năm sắp xếp theo thứ tự số lương nhân viên giảm dần 
và nếu số lương nhân viên bằng nhau thì sắp xếp theo năm tăng dần */
SELECT
    YEAR(hire_date) AS hired_year,
    COUNT(*) AS employees_hired_count
FROM employees 
GROUP BY hired_year
ORDER BY employees_hired_count DESC, hired_year;

/* 9. Viết truy vấn để lấy mức lượng lớn nhất, nhỏ nhất và mức lương trung bình của các nhân viên 
(làm tròn mức lương trung bình về số nguyên) */
SELECT
    ROUND(MIN(salary)) AS min_sal,
    ROUND(MAX(salary)) AS max_sal,
    ROUND(AVG(salary)) AS avg_sal
FROM employees;

/* 10.Viết truy vấn để chia nhân viên thành ba nhóm dựa vào mức lương, tên nhân viên được kết hợp từ first_name và
last_name, kết quả sắp xếp theo tên thứ tự tăng dần */
SELECT
    CONCAT(first_name, ' ', last_name) AS employee,
    salary,
    CASE
        WHEN salary > 2000 AND salary < 5000 THEN 'low'
        WHEN salary >= 5000 AND salary < 10000 THEN 'mid'
        ELSE 'high'
    END
FROM employees;

/* 11.Viết truy vấn hiển thị họ tên nhân viên và số điện thoại theo định dạng (_ _ _)-(_ _ _)-(_ _ _ _). Tên nhân viên
kết hợp từ first_name và last_name */
SELECT
    CONCAT(first_name, ' ', last_name) AS employee,
    REPLACE(phone_number, '.', '-') AS phone_number
FROM employees;

-- 12. Viết truy vấn để tìm các nhân viên gia nhập vào tháng 08-1994, tên nhân viên kết hợp từ first_name và last_name
SELECT
    CONCAT(first_name, ' ', last_name) AS employee,
    hire_date
FROM employees
WHERE hire_date BETWEEN '1994-08-01' AND '1994-08-31';

/* 13. Viết truy vấn để tìm những nhân viên có mức lương cao hơn mức lương trung bình của các nhân viên, kết
quả sắp xếp theo thứ tự tăng dần của department_id */
SELECT
    CONCAT(first_name, ' ', last_name) AS name,
    employee_id,
    department_name AS department,
    employees.department_id,
    salary
FROM employees
JOIN departments ON employees.department_id = departments.department_id
WHERE salary > (
    SELECT
        AVG(salary)
    FROM employees
)
ORDER BY department_id;

-- 14. Viết truy vấn để tìm mức lương lớn nhất ở mỗi phòng ban, kết quả sắp xếp theo thứ tự tăng dần của department_id
SELECT
    employees.department_id,
    department_name AS department,
    MAX(salary) AS maximum_salary
FROM employees
JOIN departments ON employees.department_id = departments.department_id
GROUP BY employees.department_id, department
ORDER BY employees.department_id;

- 15. Viết truy vấn để tìm 5 nhân viên có mức lương thấp nhất
SELECT
    first_name,
    last_name,
    employee_id,
    salary
FROM employees
ORDER BY salary DESC
LIMIT 26,5;

-- 16. Viết truy vấn để hiển thị tên nhân viên theo thứ tự ngược lại
SELECT
    LOWER(first_name) AS name,
    REVERSE(LOWER(first_name)) AS name_in_reverse
FROM employees;

-- 17. Viết truy vấn để tìm những nhân viên đã gia nhập vào sau ngày 15 của tháng
SELECT
    employee_id,
    CONCAT(first_name, ' ', last_name) AS employee,
    hire_date
FROM employees
WHERE DAYOFMONTH(hire_date) > 15;

/* 18. Viết truy vấn để tìm những quản lý và nhân viên làm trong các phòng ban khác nhau, kết quả sắp xếp theo thứ tự tăng 
dần của tên người quản lý (tên nhân viên và quản lý kết hợp từ first_name và last_name) */
SELECT
    CONCAT(m.first_name, ' ', m.last_name) as manager,
    CONCAT(e.first_name, ' ', e.last_name) as employee,
    m.department_id AS mgr_dept,
    e.department_id AS emp_dept
FROM employees as e 
JOIN employees as m ON m.employee_id = e.manager_id
WHERE m.department_id != e.department_id
ORDER BY manager;
