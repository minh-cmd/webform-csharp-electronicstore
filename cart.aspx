<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="btlwebcoban.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="../css/cart.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/navigationbar.css">
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
                    <li>
                        <div class="search_bar">
                            <input type="text" id="txtSearch" name="search" class="search_input" placeholder="Tìm kiếm sản phẩm..." />
                            <button type="button" class="search_button">Tìm kiếm</button>
                        </div>
                    </li>
                    <li><a href="Home.aspx">Trang chủ</a></li>
                    <li><a href="ProductPage.aspx">Sản phẩm</a></li>
                    <li>
                        <a href="cart.aspx">Giỏ hàng</a>
                        <div id="cartcount" class="cart_count" runat="server"></div>
                    </li>
                    <li>
                        <button type="button" onserverclick="toSignIn" runat="server">Đăng nhập</button></li>
                    <li>
                        <button type="button" onserverclick="toSignUp" runat="server">Đăng kí</button></li>
                </ul>
            </nav>
        </header>
    <form id="form1" runat="server">
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
            <span id="error_message" runat="server" style="color:red;"></span>
            <!-- Cart Total Section -->
            <section class="cart-summary">
                <h2>Tổng giá giỏ hàng</h2>
                <p>Tổng: <span id="total_amount" runat="server">0.00 VND</span></p>
                <button type="button" class="checkout-btn" onserverclick="ToCheckOut_ServerClick" runat="server">Thanh toán</button>
            </section>
        </main>
    </form>




    <footer class="footer">
        <div class="footer-container">
            <div class="footer-about">
                <h3>About MinhElectronic</h3>
                <p>Your one-stop shop for diverse electronic appliances. Quality products at unbeatable prices.</p>
            </div>
            <div class="footer-links">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="home.html">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Products</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <div class="footer-social">
                <h3>Follow Us</h3>
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
