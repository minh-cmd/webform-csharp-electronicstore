<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetailPage.aspx.cs" Inherits="btlwebcoban.ProductDetailPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chi tiết mặt hàng</title>
    <link rel="stylesheet" href="~/css/navigationbar.css">
    <link rel="stylesheet" href="~/css/footer.css">
    <link rel="stylesheet" href="~/css/productdetail.css">
    <link rel="stylesheet" href="~/css/recommendedproduct.css">

    <script>
        function increaseQty() {
            const qtyInput = document.getElementById("quantity");
            let currentQty = parseInt(qtyInput.value);
            qtyInput.value = currentQty + 1;
        }

        function decreaseQty() {
            const qtyInput = document.getElementById("quantity");
            let currentQty = parseInt(qtyInput.value);
            if (currentQty > 1) {
                qtyInput.value = currentQty - 1;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
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

        <main id="ProductDetail" class="product-detail" runat="server">
            <%--<section class="product-images">
                <img src="../picture/tv1.png" alt="Product Name 1" class="main-image">
                <div class="gallery">
                    <img src="../picture/tv1.png" alt="Product Thumbnail 1">
                    <img src="../picture/tv2.png" alt="Product Thumbnail 2">
                    <img src="../picture/tv3.png" alt="Product Thumbnail 3">
                </div>
            </section>

            <section class="product-info">
                <h1 class="product-title">Product Name 1</h1>
                <p class="product-price">$99.99</p>
                <p class="product-description">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo, justo non consectetur
                ultricies, lectus neque dignissim nisl, vitae cursus sapien sapien ut ipsum. Donec et tristique magna.
                </p>

                <div class="quantity-selector">
                    <button class="quantity-btn" onclick="decreaseQty()">-</button>
                    <input type="text" id="quantity" value="1" readonly>
                    <button class="quantity-btn" onclick="increaseQty()">+</button>
                </div>

                <button onclick="redirectToCart()" class="add-to-cart">Add to Cart</button>
            </section>--%>
        </main>


        <section class="product_recommended">
            <h2>Sản phẩm liên quan</h2>
            <div class="product_container" id="ProductContainer" runat="server">
                <%--<div class="product">
                    <img src="../picture/tv1.png" alt="Product 1">
                    <div class="product_small_info">
                        <h3>Product 1</h3>
                        <p>$99.99</p>
                    </div>
                    <div class="product_actions">
                        <div class="product_button">
                            <button class="add_to_cart">Add to Cart</button>
                            <button class="buy_now">Buy Now</button>
                        </div>
                    </div>
                </div>
                <div class="product">
                    <img src="../picture/tv1.png" alt="Product 1">
                    <div class="product_small_info">
                        <h3>Product 1</h3>
                        <p>$99.99</p>
                    </div>
                    <div class="product_actions">
                        <div class="product_button">
                            <button class="add_to_cart">Add to Cart</button>
                            <button class="buy_now">Buy Now</button>
                        </div>
                    </div>
                </div>
                <div class="product">
                    <img src="../picture/tv1.png" alt="Product 1">
                    <div class="product_small_info">
                        <h3>Product 1</h3>
                        <p>$99.99</p>
                    </div>
                    <div class="product_actions">
                        <div class="product_button">
                            <button class="add_to_cart">Add to Cart</button>
                            <button class="buy_now">Buy Now</button>
                        </div>
                    </div>
                </div>

                <div class="product">
                    <img src="../picture/tv1.png" alt="Product 1">
                    <div class="product_small_info">
                        <h3>Product 1</h3>
                        <p>$99.99</p>
                    </div>
                    <div class="product_actions">
                        <div class="product_button">
                            <button class="add_to_cart">Add to Cart</button>
                            <button class="buy_now">Buy Now</button>
                        </div>
                    </div>
                </div>


                <div class="product">
                    <img src="../picture/tv1.png" alt="Product 1">
                    <div class="product_small_info">
                        <h3>Product 1</h3>
                        <p>$99.99</p>
                    </div>
                    <div class="product_actions">
                        <div class="product_button">
                            <button class="add_to_cart">Add to Cart</button>
                            <button class="buy_now">Buy Now</button>
                        </div>
                    </div>
                </div>--%>
            </div>

        </section>


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
    </form>
</body>
</html>
