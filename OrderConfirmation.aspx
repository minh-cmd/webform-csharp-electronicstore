<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderConfirmation.aspx.cs" Inherits="btlwebcoban.OrderConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mua hàng thành công</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            width: 100vw;
            height: 100vh;
            display:flex;
            justify-content:center;
            align-items:center;
        }

        form{
            display: flex;
            flex-direction:column;
            justify-items:center;
            align-items: center;
        }

        h2{
            text-align:center;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>
            Đặt hàng thành công. Cảm ơn quý khách đã mua hàng!
        </h2>

        <a href="Home.aspx">Tiếp tục mua hàng</a>
    </form>
</body>
</html>
