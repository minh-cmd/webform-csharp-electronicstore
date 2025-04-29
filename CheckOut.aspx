<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="btlwebcoban.checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thanh toán</title>
    <link rel="stylesheet" href="~/css/navigationbar.css">
    <link rel="stylesheet" href="~/css/checkout.css">
    <link rel="stylesheet" href="~/css/footer.css">
</head>
<body>
    <header>
        <nav class="navbar">
            <div class="logo">
                <a href="Home.aspx">MinhElectronic</a>
            </div>

            <input type="checkbox" id="hamburger_checkbox">
            <label for="hamburger_checkbox" class="hamburger">
                <span></span>
                <span></span>
                <span></span>
            </label>
            <ul>
                <li><a href="Home.aspx">Trang chủ</a></li>
                <li><a href="ProductPage.aspx">Sản phẩm</a></li>
                <li>
                    <a href="cart.aspx">Giỏ hàng</a>
                    <div id="cartcount" class="cart_count" runat="server"></div>
                </li>
                <li>
                    <button style="width: 100%;">Đăng nhập</button></li>
                <li>
                    <button>Đăng kí</button></li>
            </ul>
        </nav>
    </header>

    <!-- Main Checkout Section -->
    <main class="checkout-page">
        <h1>Thanh toán</h1>
        <div class="checkout-container">
            <!-- Customer Details Section -->
            <section class="customer-details">
                <h2>Chi tiết giao hàng</h2>
                <form id="form1" runat="server">
                    <div class="form-group">
                        <label for="fullname">Họ tên</label>
                        <input type="text" id="fullname" name="fullname" placeholder="Minh" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" placeholder="minh@example.com" required>
                    </div>
                    <div class="form-group">
                        <label for="address">Địa chỉ</label>
                        <input type="text" id="address" name="address" placeholder="123 đường A, Phường B, Quận C" required>
                    </div>
                    <div class="form-group">
                        <label for="phone">Số điện thoại</label>
                        <input type="tel" id="phone" name="phone" placeholder="09876543211" required>
                    </div>
            </section>

            <!-- Payment Details Section -->
            <section class="payment-details">
                <h2>Thông tin thanh toán</h2>
                <div class="form-group">
                    <label>Chọn phương thức thanh toán:</label>
                    <div class="payment-options">
                        <label>
                            <input type="radio" name="paymentMethod" value="cash" checked>
                            Trả tiền mặt
                        </label>
                        <label>
                            <input type="radio" name="paymentMethod" value="card">
                            Thanh toán thẻ ngân hàng
                        </label>
                    </div>
                </div>
            </section>

            <!-- Order Summary Section -->
            <section class="order-summary">
                <h2>Hoá đơn</h2>
                <div class="summary-item">
                    <span>Giá hàng:</span>
                    <span id="itemsummary" runat="server">0.00VND</span>
                </div>
                <div class="summary-item">
                    <span>Giá giao hàng:</span>
                    <span>10.00VND</span>
                </div>
                <div class="summary-item total">
                    <span>Tổng:</span>
                    <span id="totalsummary" runat="server">0.00VND</span>
                </div>
                <button type="button" class="checkout-btn" onserverclick="redirectToSuccessfulBuy" runat="server">Đặt hàng</button>
                </form>
            </section>
        </div>
    </main>

    <footer class="footer">
        <div class="footer-container">

            <div class="footer-about">
                <h3>Về MinhElectronic</h3>
                <p>Cửa hàng tiện ích điện tử với nhiều hàng giá rẻ, phải chăng, chất lượng tốt.</p>
            </div>

            <div class="footer-links">
                <h3>Các trang liên quan</h3>
                <ul>
                    <li><a href="home.html">Trang chủ</a></li>
                    <li><a href="#">Giới thiệu</a></li>
                    <li><a href="#">Sản phẩm</a></li>
                    <li><a href="#">Liên hệ</a></li>
                </ul>
            </div>

            <div class="footer-social">
                <h3>Theo dõi chúng tôi</h3>
                <ul>
                    <li><a href="#" target="_blank">Facebook</a></li>
                    <li><a href="#" target="_blank">Twitter</a></li>
                    <li><a href="#" target="_blank">Instagram</a></li>
                </ul>
            </div>
        </div>

        <div class="footer-bottom">
            <p>&copy; 2025 MinhElectronic. All Rights Reserved.</p>
        </div>
    </footer>
</body>
</html>
