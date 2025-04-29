<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="btlwebcoban.ProductPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Các sản phẩm</title>
    <link rel="stylesheet" href="~/css/navigationbar.css">
    <link rel="stylesheet" href="~/css/footer.css">
    <link rel="stylesheet" href="~/css/productpage.css">

    <script>
        function filterbar() {

            var category = document.getElementById("category-select").value;
            // Get the selected price range from the radio buttons
            var priceRange = "";
            var priceRadios = document.getElementsByName("priceRange");
            for (var i = 0; i < priceRadios.length; i++) {
                if (priceRadios[i].checked) {
                    priceRange = priceRadios[i].value;
                    break;
                }
            }
            // Redirect to ProductPage.aspx with the filter parameters
            window.location.href = "ProductPage.aspx?category=" + encodeURIComponent(category) + "&priceRange=" + encodeURIComponent(priceRange);
        }

        function btn_IncreaseQuantity_onclick(productid) {
            var a = document.getElementById("quantity_" + productid);
            var b = parseInt(a.value) ;
            a.value = b + 1;
        }

        function btn_DecreaseQuantity_onclick(productid) {
            var a = document.getElementById("quantity_" + productid);
            var b = parseInt(a.value);
            if(b>1)
                a.value = b - 1;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" method="post">
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


        <main class="product-listing">
            <section class="filter-bar">
                <div class="filter-group">
                    <label for="category-select">Lọc danh sách:</label>
                    <select id="category-select" name="category">
                        <option value="all">tất cả</option>
                        <option value="maygiat">máy giặt</option>
                        <option value="television">TV</option>
                        <option value="tulanh">tủ lạnh</option>
                        <option value="laptop">Laptop</option>
                        <option value="dienthoai">Điện thoại</option>
                    </select>
                </div>
                <div class="filter-price">
                    <span>Giá:</span>
                    <label>
                        <input type="radio" name="priceRange" value="all" />
                        Tất cả
                    </label>
                    <label>
                        <input type="radio" name="priceRange" value="under500" />
                        dưới 50 VND
                    </label>
                    <label>
                        <input type="radio" name="priceRange" value="500to1500" />
                        50 - 150 VND
                    </label>
                    <label>
                        <input type="radio" name="priceRange" value="above1500" />
                        trên 150 VND
                    </label>
                </div>
                <button type="button" class="filter-btn" onclick="filterbar()">Xác nhận</button>
            </section>

            <section class="product_feature">
                <h1>Các sản phẩm</h1>
                <div class="product_container" id="ProductContainer" runat="server">
                </div>
            </section>
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
    </form>
</body>
</html>
