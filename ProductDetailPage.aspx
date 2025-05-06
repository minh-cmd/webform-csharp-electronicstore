<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetailPage.aspx.cs" Inherits="btlwebcoban.ProductDetailPage" MasterPageFile="~/Site1.Master" ClientIDMode="Static" %>


<asp:Content ContentPlaceHolderID="TitleContent" runat="server">
    Chi tiết mặt hàng
</asp:Content>

<asp:Content ContentPlaceHolderID="SciptAndCss" runat="server">
    <link rel="stylesheet" href="/css/productdetail.css">
    <link rel="stylesheet" href="/css/recommendedproduct.css">

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
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <main id="ProductDetail" class="product-detail" runat="server">
    </main>


    <section class="product_recommended">
        <h2>Sản phẩm liên quan</h2>
        <div class="product_container" id="ProductContainer" runat="server">
        </div>
    </section>
</asp:Content>
