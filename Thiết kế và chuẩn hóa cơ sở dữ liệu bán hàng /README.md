## 1. Xác định các đối tượng và quan hệ giữa các đối tượng

Một tiệm tạp hóa cần quản lý việc mua bán hàng hóa của tiệm tạp hóa. Sau đây là phần mô tả theo các nghiệp vụ hàng ngày của tiệm:

- Nhân viên quản lý mỗi hàng hóa trong tiệm nhờ vào tên riêng của hàng hóa và có đơn vị tính khác nhau. Ví dụ như: Nước suối Aquafina với đơn vị là chai, sữa ngôi sao Phương Nam với đơn vị là hộp, …
- Mỗi hàng hóa có một mã hàng hóa riêng để phân biệt với các hàng hóa khác. Mã số là các mã vạch được in trên hàng hóa. Mỗi hàng hóa sẽ có giá mua và giá bán riêng sau đó được tính ra giá bình quân và có ghi ngày cập nhật (ngày mua hoặc ngày bán gần nhất của hàng hóa).
- Mỗi hàng hóa còn có một đơn vị tính khác như: thùng, lốc, … với số lượng, giá mua và giá bán riêng. Ví dụ: thùng thì có 24 chai, lốc thì có 6 chai, … Đơn vị tính ở đây khác với đơn vị tính của từng hàng hóa đơn lẻ ở trên. 
- Khi bán các mặt hàng sẽ có đơn hàng bán để biết được khách hàng nào đã mua hàng, mua vào ngày nào với giá tổng cộng là bao nhiêu và nhân viên nào đã trực tiếp ghi đơn hàng đó.
- Mỗi đơn hàng sẽ có chi tiết của đơn hàng riêng cho biết khách hàng đã đặt mua nhưng mặt hàng nào với có giá bán, giá mua, số lượng, và thành tiền là bao nhiêu.
- Nhân viên làm việc trong tiệm phải được quản lý về: Tên, địa chỉ, điện thoại, ... và phải cấp quyền để đăng nhập vào hệ thống bán hàng với tên đăng nhập và mật khẩu.
- Ngoài ra nhân viên còn có nhiệm vụ nhận hàng từ các nhà cung cấp thông qua đơn hàng mua có ngày đặt hàng, nhà cung cấp và tổng giá tiền là bao nhiêu.
- Mỗi đơn hàng mua sẽ có một chi tiết đơn hàng mua riêng cho biết đã mua những mặt hàng nào có giá mua, số lượng và thành tiền là bao nhiêu.
- Khi mua hàng ta cần lưu lại thông tin những nhà cung cấp: tên, địa chỉ, điện thoại, … để tiện quản lý.
- Nhiệm vụ của các bạn là xác định được các đối tượng cần có trong một cơ sở dữ bán hàng và các thuộc tính của các đối tượng, sau đó thể hiện qua sơ đồ ER.

## 2. Thiết kế ERD
