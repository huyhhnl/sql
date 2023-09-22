## Phụ thuộc hàm (Functional Dependency - FD) 
- FD là một ràng buộc xác định mối quan hệ của một thuộc tính này với một thuộc tính khác trong Hệ quản trị cơ sở dữ liệu.
- VD: 1 bảng có 2 cột A và B. Cột A có các giá trị lần lượt là 1, 2, 1. Cột B có các giá trị lần lượt tương ứng với cột A là a, b, a. Trong trường hợp này thì với mọi giá trị của A ta có thể kết luận được giá trị của B. Với A = 1 thì B luôn bằng a, A = 2 thì B = b. Vậy ta nói là A bao hàm B hay B phụ thuộc hàm vào A.
- Ký hiệu: A→B 
## Các loại phụ thuộc hàm
1. Trivial Functional Dependency (Phụ thuộc hàm tầm thường)
2. Non – Trivial Functional Dependency (Phụ thuộc hàm phi tầm thường) 
