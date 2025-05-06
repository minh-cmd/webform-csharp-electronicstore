<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="btlwebcoban.checkout" MasterPageFile="~/Site1.Master" ClientIDMode="Static" %>

<asp:Content runat="server" ContentPlaceHolderID="TitleContent">
    thanh toán
</asp:Content>

<asp:Content ContentPlaceHolderID="SciptAndCss" runat="server">
    <link rel="stylesheet" href="/css/checkout.css">
</asp:Content>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <!-- Main Checkout Section -->
    <main class="checkout-page">
        <h1>Thanh toán</h1>
        <div class="checkout-container">
            <!-- Customer Details Section -->
            <section class="customer-details">
                <h2>Chi tiết giao hàng</h2>
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
            <section class="order-summary" id="order_summary">

                <h2>Hoá đơn</h2>
                <span>Sản phẩm:</span>
                <div class="item_container" id="ItemContainer" runat="server">

                </div>

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
            </section>
        </div>
    </main>
</asp:Content>
