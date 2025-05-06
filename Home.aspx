<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="btlwebcoban.Home" ClientIDMode="Static"%>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Trang chủ
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="SciptAndCss" runat="server">
    <link rel="stylesheet" href="/css/homemaincontent.css">
    <link rel="stylesheet" href="/css/homeflashdeal.css" />

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
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section class="biggest_banner">
        <div class="biggest_banner_content">
            <h1>Cửa hàng điện máy đa dạng nhất</h1>
        </div>
    </section>

    <h1 class="section_title">Các sản phẩm nổi bật</h1>
    <section class="product_feature">
        <div class="product_container" id="ProductContainer" runat="server">
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
                <img src="../picture/dienthoai/Nokia_G400.jfif" alt="Product 1" />
                <div class="product_info">
                    <h3>Product 1</h3>
                    <p>$99.99</p>
                </div>
                <div class="product_actions">
                    <div class="product_quantity_control">
                        <button class="decrease">-</button>
                        <input type="number" min="1" value="1" class="quantity" />
                        <button class="increase">+</button>
                    </div>
                    <div class="product_button">
                        <button class="add_to_cart">Add to Cart</button>
                        <button class="buy_now">Buy Now</button>
                    </div>
                </div>
            </div>


            <div class="product">
                <img src="../picture/maygiat/LG_TurboClean_300.jfif" alt="Product 1" />
                <div class="product_info">
                    <h3>Product 1</h3>
                    <p>$99.99</p>
                </div>
                <div class="product_actions">
                    <div class="product_quantity_control">
                        <button class="decrease">-</button>
                        <input type="number" min="1" value="1" class="quantity" />
                        <button class="increase">+</button>
                    </div>
                    <div class="product_button">
                        <button class="add_to_cart">Add to Cart</button>
                        <button class="buy_now">Buy Now</button>
                    </div>
                </div>
            </div>


            <div class="product">
                <img src="../picture/maygiat/Samsung_EcoWash_500.jfif" alt="Product 1" />
                <div class="product_info">
                    <h3>Product 1</h3>
                    <p>$99.99</p>
                </div>
                <div class="product_actions">
                    <div class="product_quantity_control">
                        <button class="decrease">-</button>
                        <input type="number" min="1" value="1" class="quantity" />
                        <button class="increase">+</button>
                    </div>
                    <div class="product_button">
                        <button class="add_to_cart">Add to Cart</button>
                        <button class="buy_now">Buy Now</button>
                    </div>
                </div>
            </div>


            <div class="product">
                <img src="../picture/maygiat/Toshiba_X203.jfif" alt="Product 1" />
                <div class="product_info">
                    <h3>Product 1</h3>
                    <p>$99.99</p>
                </div>
                <div class="product_actions">
                    <div class="product_quantity_control">
                        <button class="decrease">-</button>
                        <input type="number" min="1" value="1" class="quantity" />
                        <button class="increase">+</button>
                    </div>
                    <div class="product_button">
                        <button class="add_to_cart">Add to Cart</button>
                        <button class="buy_now">Buy Now</button>
                    </div>
                </div>
            </div>


            <div class="product">
                <img src="../picture/television/LG_OLED_C3.jpeg" alt="Product 1" />
                <div class="product_info">
                    <h3>Product 1</h3>
                    <p>$99.99</p>
                </div>
                <div class="product_actions">
                    <div class="product_quantity_control">
                        <button class="decrease">-</button>
                        <input type="number" min="1" value="1" class="quantity" />
                        <button class="increase">+</button>
                    </div>
                    <div class="product_button">
                        <button class="add_to_cart">Add to Cart</button>
                        <button class="buy_now">Buy Now</button>
                    </div>
                </div>
            </div>

            <div class="product">
                <img src="../picture/television/LG_OLED_C3.jpeg" alt="Product 1" />
                <div class="product_info">
                    <h3>Product 1</h3>
                    <p>$99.99</p>
                </div>
                <div class="product_actions">
                    <div class="product_quantity_control">
                        <button class="decrease">-</button>
                        <input type="number" min="1" value="1" class="quantity" />
                        <button class="increase">+</button>
                    </div>
                    <div class="product_button">
                        <button class="add_to_cart">Add to Cart</button>
                        <button class="buy_now">Buy Now</button>
                    </div>
                </div>
            </div>

            <div class="product">
                <img src="../picture/television/Samsung_QLED_65Q.png" alt="Product 1" />
                <div class="product_info">
                    <h3>Product 1</h3>
                    <p>$99.99</p>
                </div>
                <div class="product_actions">
                    <div class="product_quantity_control">
                        <button class="decrease">-</button>
                        <input type="number" min="1" value="1" class="quantity" />
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

</asp:Content>




