<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="btlwebcoban.cart" MasterPageFile="~/Site1.Master" ClientIDMode="Static" %>

<asp:Content ContentPlaceHolderID="TitleContent" runat="server">
    Giỏ hàng
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="SciptAndCss">
    <link rel="stylesheet" href="/css/cart.css">
    <script>

        /*function increaseQty(productId) {
            const qtyInput = document.getElementById('qty-' + productId);
            qtyInput.value = parseInt(qtyInput.value) + 1;
            updateSubtotal(productId);
        }
        function decreaseQty(productId) {
            const qtyInput = document.getElementById('qty-' + productId);
            if (parseInt(qtyInput.value) > 1) {
                qtyInput.value = parseInt(qtyInput.value) - 1;
                updateSubtotal(productId);
            }
        }
        function updateSubtotal(productId) {
            const price = parseFloat(document.getElementById('price-' + productId).textContent.replace('$', ''));
            const qty = parseInt(document.getElementById('qty-' + productId).value);
            const subtotalElem = document.getElementById('subtotal-' + productId);
            subtotalElem.textContent = (price * qty).toFixed(2) + "VND";
            updateTotal();
        }
        function updateTotal() {
            const subtotals = document.querySelectorAll('.subtotal');
            let total = 0;
            subtotals.forEach(function (elem) {
                total += parseFloat(elem.textContent.replace('$', ''));
            });
            document.getElementById('total_amount').textContent = total.toFixed(2) + "VND";
        }*/
    </script>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <!-- Main Cart Section -->
    <main class="cart-page">
        <h1>Giỏ hàng</h1>
        <table class="cart-table">
            <thead>
                <tr>
                    <th>Sản phẩm</th>
                    <th>giá</th>
                    <th>số lượng</th>
                    <th colspan="2">tổng giá</th>
                </tr>
            </thead>
            <tbody id="cartbody" runat="server">
                <%--<tr class="cart-item">
        <td class="product-info">
            <img src="../picture/tv1.png" alt="Product 1">
            <span>Product Name 1</span>
        </td>
        <td id="price-1">$99.99</td>
        <td>
            <div class="quantity-control">
                <button onclick="decreaseQty(1)">-</button>
                <input type="text" id="qty-1" value="1" readonly>
                <button onclick="increaseQty(1)">+</button>
            </div>
        </td>
        <td class="subtotal" id="subtotal-1">$99.99</td>
    </tr>--%>
            </tbody>
        </table>
        <span id="error_message" runat="server" style="color: red;"></span>
        <!-- Cart Total Section -->
        <section class="cart-summary">
            <h2>Tổng giá giỏ hàng</h2>
            <p>Tổng: <span id="total_amount" runat="server">0.00 VND</span></p>
            <button type="button" class="checkout-btn" onserverclick="ToCheckOut_ServerClick" runat="server">Thanh toán</button>
        </section>
    </main>
</asp:Content>

