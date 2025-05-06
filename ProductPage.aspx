<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="btlwebcoban.ProductPage" MasterPageFile="~/Site1.Master" ClientIDMode="Static" %>


<asp:Content ContentPlaceHolderID="TitleContent" runat="server">
    Danh sách sản phẩm
</asp:Content>

<asp:Content ContentPlaceHolderID="SciptAndCss" runat="server">
    <link rel="stylesheet" href="/css/productpage.css">
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
            var b = parseInt(a.value);
            a.value = b + 1;
        }

        function btn_DecreaseQuantity_onclick(productid) {
            var a = document.getElementById("quantity_" + productid);
            var b = parseInt(a.value);
            if (b > 1)
                a.value = b - 1;
        }
    </script>
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <main class="product-listing">
        <section class="filter-bar">
            <div class="filter-group">
                <label for="category-select">Lọc danh sách:</label>
                <select id="category-select" name="category">
                    <option value="all" selected>tất cả</option>
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
                    <input type="radio" name="priceRange" value="all" checked />
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
</asp:Content>

