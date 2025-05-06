using btlwebcoban.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace btlwebcoban
{
    public partial class ProductDetailPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductDetailLoad();
            ProductRecommendedLoad();
            Site1 masterpage = (Site1)this.Master;
            masterpage.NavbarCartCount();
        }

        protected void toSignIn(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }

        protected void toSignUp(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        private void ProductRecommendedLoad()
        {
            List<Product> list = (List<Product>)Application["Products"];
            int productid = int.Parse(Request.QueryString.Get("ProductID"));
            Product selectedProduct = null;
            int numberofcard = 0;

            if (list.Count > 0 || list != null)
            {
                foreach (Product p in list)
                {
                    if (p.ProductID == productid)
                    {
                        selectedProduct = p;
                        break;
                    }
                }

                foreach (Product p in list)
                {
                    if (selectedProduct.ProductKind == p.ProductKind && p.ProductID != selectedProduct.ProductID)
                    {
                        numberofcard = numberofcard + 1;

                        // <div class="product">
                        HtmlGenericControl div = new HtmlGenericControl("div");
                        div.Attributes["class"] = "product";
                        div.Attributes["onclick"] = $"window.location.href='ProductDetailPage.aspx?ProductID={p.ProductID}'";

                        // <img src="../picture/tv1.png" alt="Product 1">
                        HtmlImage htmlImage = new HtmlImage();
                        htmlImage.Src = p.ImageUrl;
                        htmlImage.Alt = "Product " + p.ProductID;
                        div.Controls.Add(htmlImage);

                        // <div class="product_small_info">
                        HtmlGenericControl div2 = new HtmlGenericControl("div");
                        div2.Attributes["class"] = "product_small_info";

                        // <h3>Product 1</h3>
                        HtmlGenericControl h3 = new HtmlGenericControl("h3");
                        h3.InnerText = p.ProductName;
                        div2.Controls.Add(h3);

                        // <p>$99.99</p>
                        HtmlGenericControl price = new HtmlGenericControl("p");
                        price.InnerText = p.ProductPrice + " VND";
                        div2.Controls.Add(price);

                        div.Controls.Add(div2);

                        // <div class="product_actions">
                        HtmlGenericControl div3 = new HtmlGenericControl("div");
                        div3.Attributes["class"] = "product_actions";

                        // <div class="product_button">
                        HtmlGenericControl div4 = new HtmlGenericControl("div");
                        div4.Attributes["class"] = "product_button";

                        // <button class="add_to_cart">Add to Cart</button>
                        HtmlButton btnaddtocart = new HtmlButton();
                        btnaddtocart.Attributes["class"] = "add_to_cart";
                        btnaddtocart.Attributes["type"] = "submit";
                        btnaddtocart.ID = $"btnAddToCart_{p.ProductID}";
                        btnaddtocart.InnerText = "Thêm vào giỏ hàng";
                        div4.Controls.Add(btnaddtocart);

                        // <button class="buy_now">Buy Now</button>
                        HtmlButton btnbuynow = new HtmlButton();
                        btnbuynow.Attributes["class"] = "buy_now";
                        btnbuynow.Attributes["type"] = "submit";
                        btnbuynow.ID = $"btnBuyNow_{p.ProductID}";
                        btnbuynow.InnerText = "Mua Ngay";
                        div4.Controls.Add(btnbuynow);

                        div3.Controls.Add(div4);
                        div.Controls.Add(div3);

                        ProductContainer.Controls.Add(div);

                        if (numberofcard == 5)
                            break;
                    }
                }
            }
        }

        private void ProductDetailLoad()
        {
            List<Product> list = (List<Product>)Application["Products"];
            int productid = int.Parse(Request.QueryString.Get("ProductID"));

            if (list.Count > 0 || list != null)
            {
                foreach (Product p in list)
                {
                    if (p.ProductID == productid)
                    {
                        //section
                        HtmlGenericControl section = new HtmlGenericControl("section");
                        section.Attributes["class"] = "product-images";
                        //img
                        HtmlImage img = new HtmlImage();
                        img.Attributes["class"] = "main-image";
                        img.Alt = "product " + p.ProductID;
                        img.Src = p.ImageUrl;
                        //endimg
                        section.Controls.Add(img);


                        //div
                        HtmlGenericControl div = new HtmlGenericControl("div");
                        div.Attributes["class"] = "gallery";
                        //image
                        HtmlImage galeryimg = new HtmlImage();
                        galeryimg.Alt = "product " + p.ProductID;
                        galeryimg.Src = p.ImageUrl;
                        div.Controls.Add(galeryimg);
                        //endimage
                        //image
                        HtmlImage galeryimg2 = new HtmlImage();
                        galeryimg.Alt = "product " + p.ProductID;
                        galeryimg.Src = p.ImageUrl;
                        div.Controls.Add(galeryimg2);
                        //endimage
                        //image
                        HtmlImage galeryimg3 = new HtmlImage();
                        galeryimg.Alt = "product " + p.ProductID;
                        galeryimg.Src = p.ImageUrl;
                        div.Controls.Add(galeryimg3);
                        //endimage
                        //enddiv
                        section.Controls.Add(div);
                        //endsection
                        ProductDetail.Controls.Add(section);

                        //section
                        HtmlGenericControl section2 = new HtmlGenericControl("section");
                        section2.Attributes["class"] = "product-info";

                        HtmlGenericControl h1 = new HtmlGenericControl("h1");
                        h1.Attributes["class"] = "product-title";
                        h1.InnerText = p.ProductName;
                        section2.Controls.Add(h1);

                        HtmlGenericControl p1 = new HtmlGenericControl("p");
                        p1.Attributes["class"] = "product-price";
                        p1.InnerText = p.ProductPrice.ToString() + " VND";
                        section2.Controls.Add(p1);

                        HtmlGenericControl p2 = new HtmlGenericControl("p");
                        p2.Attributes["class"] = "product-description";
                        p2.InnerText = p.ProductDescription;
                        section2.Controls.Add(p2);

                        //div
                        HtmlGenericControl div2 = new HtmlGenericControl("div");
                        div2.Attributes["class"] = "quantity-selector";
                        //button
                        HtmlButton decreasebtn = new HtmlButton();
                        decreasebtn.Attributes["class"] = "quantity-btn";
                        decreasebtn.Attributes["type"] = "button";
                        decreasebtn.Attributes["onclick"] = "decreaseQty()";
                        decreasebtn.InnerText = "-";
                        //button
                        div2.Controls.Add(decreasebtn);
                        //input
                        HtmlInputText input = new HtmlInputText();
                        input.Attributes["class"] = "text";
                        input.ID = "quantity";
                        input.Value = "1";
                        input.Attributes["readonly"] = "readonly";
                        //input
                        div2.Controls.Add(input);
                        //button
                        HtmlButton increasebtn = new HtmlButton();
                        increasebtn.Attributes["class"] = "quantity-btn";
                        increasebtn.Attributes["type"] = "button";
                        increasebtn.Attributes["onclick"] = "increaseQty()";
                        increasebtn.InnerText = "+";
                        //button
                        div2.Controls.Add(increasebtn);
                        //div
                        section2.Controls.Add(div2);

                        HtmlButton addtocart = new HtmlButton();
                        addtocart.Attributes["class"] = "add-to-cart";
                        addtocart.ID = "btnAddToCart_" + p.ProductID;
                        addtocart.InnerText = "Thêm vào giỏ hàng";
                        addtocart.ServerClick += AddToCart__ProductDetail_ServerClick;
                        section2.Controls.Add(addtocart);

                        HtmlButton buynow = new HtmlButton();
                        buynow.Attributes["class"] = "buy-now";
                        buynow.ID = "btnBuyNow_" + p.ProductID;
                        buynow.InnerText = "mua ngay";
                        buynow.ServerClick += BuyNow__ProductDetail_ServerClick;
                        section2.Controls.Add(buynow);

                        //endsection
                        ProductDetail.Controls.Add(section2);
                    }
                }
            }
        }


        protected void AddToCart__ProductDetail_ServerClick(object sender, EventArgs e)
        {
            HtmlButton btn = (HtmlButton)sender;
            int productid = int.Parse(btn.ID.Replace("btnAddToCart_", ""));
            string fieldName = Request.Form.AllKeys.FirstOrDefault(k => k.EndsWith("quantity")); //the maincontent of master page made me code this line
            string productquanity = Request.Form[fieldName];
            int productQuantity = int.Parse(productquanity);

            List<Product> list = (List<Product>)Application["Products"];
            List<CartItem> cartlist;


            foreach (Product p in list)
            {
                if (p.ProductID.Equals(productid))
                {
                    if (Session["cartitem"] == null)
                    {
                        cartlist = new List<CartItem>();
                    }
                    else
                    {
                        cartlist = (List<CartItem>)Session["cartitem"];
                    }
                    int quanity = productQuantity;
                    bool itemExists = false;
                    foreach (CartItem c in cartlist)
                    {
                        if (c.CartProduct.ProductID.Equals(productid))
                        {
                            c.ProductQuantity += quanity;
                            itemExists = true;
                            break;
                        }
                    }

                    if (!itemExists)
                    {
                        cartlist.Add(new CartItem { CartProduct = p, ProductQuantity = quanity });
                    }
                    Session["cartitem"] = (List<CartItem>)cartlist;
                    break;
                }
            }
            Site1 masterpage = (Site1)this.Master;
            masterpage.NavbarCartCount();
        }

        protected void BuyNow__ProductDetail_ServerClick(Object sender, EventArgs e)
        {
            HtmlButton btn = (HtmlButton)sender;
            int productid = int.Parse(btn.ID.Replace("btnBuyNow_", ""));
            string fieldName = Request.Form.AllKeys.FirstOrDefault(k => k.EndsWith("quantity")); //the maincontent of master page made me code this line
            string productquanity = Request.Form[fieldName];
            int productQuantity = int.Parse(productquanity);

            List<Product> list = (List<Product>)Application["Products"];
            List<CartItem> cartlist;


            foreach (Product p in list)
            {
                if (p.ProductID.Equals(productid))
                {
                    if (Session["cartitem"] == null)
                    {
                        cartlist = new List<CartItem>();
                    }
                    else
                    {
                        cartlist = (List<CartItem>)Session["cartitem"];
                    }
                    int quanity = productQuantity;
                    bool itemExists = false;
                    foreach (CartItem c in cartlist)
                    {
                        if (c.CartProduct.ProductID.Equals(productid))
                        {
                            c.ProductQuantity += quanity;
                            itemExists = true;
                            break;
                        }
                    }

                    if (!itemExists)
                    {
                        cartlist.Add(new CartItem { CartProduct = p, ProductQuantity = quanity });
                    }
                    Session["cartitem"] = (List<CartItem>)cartlist;
                    break;
                }
            }
            Response.Redirect("cart.aspx");
        }
    }
}