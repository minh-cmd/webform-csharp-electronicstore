<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="btlwebcoban.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang đăng nhập</title>
    <link rel="stylesheet" href="../css/signinprocess.css">

    <script>
        function Return() {
            window.location.href = "Home.aspx"
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <div class="title">
            <h1>ĐĂNG NHẬP</h1>
        </div>
        <label for="username" id="username-label">Tài khoản</label>
        <input type="text" id="username-input" class="text-input" placeholder="Nhập tài khoản">

        <label for="password" id="password-label">Mật khẩu</label>
        <input type="password" id="password-input" class="text-input" placeholder="Nhập mật khẩu">

        <span id="signup-a-new-account">Chưa có tài khoản? <a href="SignUp.aspx">Đăng Ký</a></span>
        <div class="button-container">
            <button id="exit-button" class="dangnhap-button" type="button" onclick="Return()">Thoát</button>
            <button id="signin-button" class="dangnhap-button">Đăng nhập</button>
        </div>
    </form>
</body>
</html>
