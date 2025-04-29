<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="btlwebcoban.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang đăng kí</title>
    <link rel="stylesheet" href="../css/signupprocess.css" />
    <script>
        /*function Return() {
            if (confirm('Bạn có chắc muốn thoát? Dữ liệu đã nhập sẽ không được lưu.')) {
                window.location.href = "SignIn.aspx";
            }
        }

        function validateForm() {
            var username = document.getElementById("username").value;
            var password1 = document.getElementById("password1").value;
            var password2 = document.getElementById("password2").value;
            var email = document.getElementById("email").value;
            var phone = document.getElementById("phone").value;

            if (!username) {
                alert("Vui lòng nhập tài khoản.");
                return false;
            }
            if (!password1) {
                alert("Vui lòng nhập mật khẩu.");
                return false;
            }
            if (!password2) {
                alert("Vui lòng nhập lại mật khẩu.");
                return false;
            }
            if (password1 !== password2) {
                alert("Mật khẩu không khớp.");
                return false;
            }
            if (!email) {
                alert("Vui lòng nhập email.");
                return false;
            }
            if (!/^\S+@\S+\.\S+$/.test(email)) {
                alert("Email không hợp lệ.");
                return false;
            }
            if (!phone) {
                alert("Vui lòng nhập số điện thoại.");
                return false;
            }
            if (!/^\d{10,11}$/.test(phone)) {
                alert("Số điện thoại không hợp lệ.");
                return false;
            }
            return true;
        }*/
    </script>
</head>
<body>
    <div class="container">
        <h1 class="container_title">ĐĂNG KÝ</h1>
        <form method="post" class="container_form" id="form1" runat="server" onsubmit="return validateForm()">
            <div id="errorMessage" runat="server" style="color: red; grid-column: 1/3; text-align: center;"></div>

            <label for="lastname">Họ</label>
            <input type="text" id="lastname" name="lastname" class="text-input" placeholder="Nhập họ"/>


            <label for="firstname">Tên</label>
            <input type="text" id="firstname" name="firstname" class="text-input" placeholder="Nhập tên" />

            <label for="username">Tài khoản</label>
            <input type="text" id="username" name="username" class="text-input" placeholder="Nhập tài khoản" />

            <label for="password1">Mật khẩu</label>
            <input type="password" id="password1" name="password1" class="text-input" placeholder="Nhập mật khẩu" />

            <label for="password2">Nhập lại mật khẩu</label>
            <input type="password" id="password2" name="password2" class="text-input" placeholder="Nhập lại mật khẩu" />

            <label for="email">Email</label>
            <input type="email" id="email" name="email" class="text-input" placeholder="example123@yourmail.com" />



            <label for="phone">Số điện thoại</label>
            <input type="tel" id="phone" name="phone" class="text-input" placeholder="Nhập số điện thoại" />

            <label for="birthday">Quốc gia</label>
            <input type="text" id="birthday" name="birthday" class="text-input" placeholder="quốc gia" minlength="6" title="Phải có ít nhất 6 ký tự" required/>

            <label id="gender">Giới tính</label>
            <div class="gender">
                <input type="radio" name="gender" id="gender_male" value="male" />
                Nam
                <input type="radio" name="gender" id="gender_female" value="female" />
                Nữ
            </div>

            <span>địa chỉ</span>
            <textarea name="diachi" id="diachi"></textarea>

            <div class="button_container">
                <button class="dangnhap-button" type="button" onclick="Return()">Thoát</button>
                <button class="dangnhap-button" type="submit">Đăng Ký</button>
            </div>
        </form>
    </div>
</body>
</html>
