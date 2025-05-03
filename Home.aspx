<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="btlwebcoban.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>trang chủ</title>
    <link rel="stylesheet" href="~/css/navigationbar.css">
    <link rel="stylesheet" href="~/css/homemaincontent.css">
    <link rel="stylesheet" href="~/css/footer.css">
    <link rel="stylesheet" href="~/css/homeflashdeal.css"/>

    <script>
        function btn_IncreaseQuantity_onclick(productid) {
            var a = document.getElementById("quantity_" + productid);
            var b = parseInt(a.value);
            a.value = b + 1;
        }

        function btn_DecreaseQuantity_onclick(productid) {
            var a = document.getElementById("quantity_" + productid);
            var b = parseInt(a.value);
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
                            <button type="submit" class="search_button" onserverclick="SearchBar" runat="server">Tìm kiếm</button>
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

        <main>
            <section class="biggest_banner">
                <div class="biggest_banner_content">
                    <h1>Cửa hàng điện máy đa dạng nhất</h1>
                </div>
            </section>

            <h1 class="section_title">Các sản phẩm nổi bật</h1>
            <section class="product_feature">
                <div class="product_container" id="ProductContainer" runat="server">
                    <%--<div class="product">
                        <img src="../picture/tv1.png" alt="Product 1">
                        <div class="product_info">
                            <h3>Product 1</h3>
                            <p>$99.99</p>
                        </div>
                        <div class="product_actions">
                            <div class="product_quantity_control">
                                <button class="decrease">-</button>
                                <input type="number" min="1" value="1" class="quantity">
                                <button class="increase">+</button>
                            </div>
                            <div class="product_button">
                                <button class="add_to_cart">Add to Cart</button>
                                <button class="buy_now" runat="server" onserverclick="btnBuyNow_click">Buy Now</button>
                            </div>
                        </div>
                    </div>
                    --%>
                </div>
            </section>




            <section class="flash_deals">
                <div class="flash_deals_content">
                    <div class="deal_timer">
                        <h2>Hàng HOT</h2>
                        <div class="timer">
                            <span id="hours">04</span>:<span id="minutes">33</span>:<span id="seconds">28</span>
                            <div class="timer_labels">
                                <span>Giờ</span><span>Phút</span><span>Giây</span>
                            </div>
                        </div>
                        <p>Đừng bỏ lỡ các ưu đãi lớn</p>
                    </div>
                    <div class="trending_offers">
                        <h3>CÁC MẶT HÀNG SIÊU HOT</h3>
                        <div class="trending_products">
                            <div class="trending_product">
                                <img src="../picture/tv1.png" alt="Product 1">
                                <h4>TV Sony</h4>
                                <p>21.000 VND</p>
                                <span class="discount">Save $2.56</span>
                            </div>
                            <div class="trending_product">
                                <img src="../picture/tv1.png" alt="Product 2">
                                <h4>Máy lạnh siêu tiết kiệm</h4>
                                <p>20.000 VND</p>
                            </div>
                            <div class="trending_product">
                                <img src="../picture/tv1.png" alt="Product 3">
                                <h4>Máy giặt công suất lớn</h4>
                                <p>20.000 VND <span class="discount">-80%</span></p>
                            </div>
                            <div class="trending_product">
                                <img src="../picture/tv1.png" alt="Product 4">
                                <h4>Máy sưởi công nghiệp</h4>
                                <p>800.000 VND</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>




            <h1 class="section_title2">Các sản phẩm đang giảm giá</h1>

            <section class="product_feature">
                <div class="product_container">
                    <div class="product">
                        <img src="../picture/dienthoai/Huawei_P60_Pro.jpg" alt="Product 1">
                        <div class="product_info">
                            <h3>Product 1</h3>
                            <p>$99.99</p>
                        </div>
                        <div class="product_actions">
                            <div class="product_quantity_control">
                                <button class="decrease">-</button>
                                <input type="number" min="1" value="1" class="quantity">
                                <button class="increase">+</button>
                            </div>
                            <div class="product_button">
                                <button class="add_to_cart">Add to Cart</button>
                                <button class="buy_now">Buy Now</button>
                            </div>
                        </div>
                    </div>

                    <div class="product">
                        <img src="../picture/dienthoai/Nokia_G400.jfif" alt="Product 1"/>
                        <div class="product_info">
                            <h3>Product 1</h3>
                            <p>$99.99</p>
                        </div>
                        <div class="product_actions">
                            <div class="product_quantity_control">
                                <button class="decrease">-</button>
                                <input type="number" min="1" value="1" class="quantity"/>
                                <button class="increase">+</button>
                            </div>
                            <div class="product_button">
                                <button class="add_to_cart">Add to Cart</button>
                                <button class="buy_now">Buy Now</button>
                            </div>
                        </div>
                    </div>


                    <div class="product">
                        <img src="../picture/maygiat/LG_TurboClean_300.jfif" alt="Product 1"/>
                        <div class="product_info">
                            <h3>Product 1</h3>
                            <p>$99.99</p>
                        </div>
                        <div class="product_actions">
                            <div class="product_quantity_control">
                                <button class="decrease">-</button>
                                <input type="number" min="1" value="1" class="quantity"/>
                                <button class="increase">+</button>
                            </div>
                            <div class="product_button">
                                <button class="add_to_cart">Add to Cart</button>
                                <button class="buy_now">Buy Now</button>
                            </div>
                        </div>
                    </div>


                    <div class="product">
                        <img src="../picture/maygiat/Samsung_EcoWash_500.jfif" alt="Product 1"/>
                        <div class="product_info">
                            <h3>Product 1</h3>
                            <p>$99.99</p>
                        </div>
                        <div class="product_actions">
                            <div class="product_quantity_control">
                                <button class="decrease">-</button>
                                <input type="number" min="1" value="1" class="quantity"/>
                                <button class="increase">+</button>
                            </div>
                            <div class="product_button">
                                <button class="add_to_cart">Add to Cart</button>
                                <button class="buy_now">Buy Now</button>
                            </div>
                        </div>
                    </div>


                    <div class="product">
                        <img src="../picture/maygiat/Toshiba_X203.jfif" alt="Product 1"/>
                        <div class="product_info">
                            <h3>Product 1</h3>
                            <p>$99.99</p>
                        </div>
                        <div class="product_actions">
                            <div class="product_quantity_control">
                                <button class="decrease">-</button>
                                <input type="number" min="1" value="1" class="quantity"/>
                                <button class="increase">+</button>
                            </div>
                            <div class="product_button">
                                <button class="add_to_cart">Add to Cart</button>
                                <button class="buy_now">Buy Now</button>
                            </div>
                        </div>
                    </div>


                    <div class="product">
                        <img src="../picture/television/LG_OLED_C3.jpeg" alt="Product 1"/>
                        <div class="product_info">
                            <h3>Product 1</h3>
                            <p>$99.99</p>
                        </div>
                        <div class="product_actions">
                            <div class="product_quantity_control">
                                <button class="decrease">-</button>
                                <input type="number" min="1" value="1" class="quantity"/>
                                <button class="increase">+</button>
                            </div>
                            <div class="product_button">
                                <button class="add_to_cart">Add to Cart</button>
                                <button class="buy_now">Buy Now</button>
                            </div>
                        </div>
                    </div>

                    <div class="product">
                        <img src="../picture/television/LG_OLED_C3.jpeg" alt="Product 1"/>
                        <div class="product_info">
                            <h3>Product 1</h3>
                            <p>$99.99</p>
                        </div>
                        <div class="product_actions">
                            <div class="product_quantity_control">
                                <button class="decrease">-</button>
                                <input type="number" min="1" value="1" class="quantity"/>
                                <button class="increase">+</button>
                            </div>
                            <div class="product_button">
                                <button class="add_to_cart">Add to Cart</button>
                                <button class="buy_now">Buy Now</button>
                            </div>
                        </div>
                    </div>

                    <div class="product">
                        <img src="../picture/television/Samsung_QLED_65Q.png" alt="Product 1"/>
                        <div class="product_info">
                            <h3>Product 1</h3>
                            <p>$99.99</p>
                        </div>
                        <div class="product_actions">
                            <div class="product_quantity_control">
                                <button class="decrease">-</button>
                                <input type="number" min="1" value="1" class="quantity"/>
                                <button class="increase">+</button>
                            </div>
                            <div class="product_button">
                                <button class="add_to_cart">Add to Cart</button>
                                <button class="buy_now">Buy Now</button>
                            </div>
                        </div>
                    </div>


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
