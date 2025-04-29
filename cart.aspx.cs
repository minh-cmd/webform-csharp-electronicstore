using btlwebcoban.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace btlwebcoban
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCart();
            NavbarCartCount();
        }
        protected void toSignUp(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
        protected void toSignIn(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }
        private void NavbarCartCount()
        {
            List<CartItem> list = (List<CartItem>)Session["cartitem"];
            if (list != null)
            {
                int ProductinCart = 0;
                foreach (var item in list)
                {
                    ProductinCart += item.ProductQuantity;
                }
                cartcount.InnerText = ProductinCart.ToString();
                cartcount.Style["display"] = "block";
            }
            else
            {
                cartcount.InnerText = "";
                cartcount.Style["display"] = "none";
            }

        }
        protected void btnIncreaseQuantity_Click(object sender, EventArgs e)
        {
            HtmlButton btn = (HtmlButton)sender;
            int productid = int.Parse(btn.ID.Replace("increasebtn_", ""));
            List<CartItem> items = (List<CartItem>) Session["cartitem"];
            
            foreach (CartItem a in items)
            {
                if (a.CartProduct.ProductID.Equals(productid))
                {
                    a.ProductQuantity++;
                    break;
                }
            }
            Session["cartitem"] = items;
            LoadCart();
            NavbarCartCount();
        }
        protected void btnDecreaseQuantity_Click(object sender, EventArgs e)
        {
            HtmlButton btn = (HtmlButton)sender;
            int productid = int.Parse(btn.ID.Replace("decreasebtn_", ""));
            List<CartItem> items = (List<CartItem>)Session["cartitem"];

            foreach (CartItem a in items)
            {
                if (a.CartProduct.ProductID.Equals(productid))
                {
                    a.ProductQuantity--;
                    break;
                }
            }
            Session["cartitem"] = items;
            LoadCart();
            NavbarCartCount();
        }
        protected void btnClearCart_Click(object sender, EventArgs e)
        {
            Session["cartitem"] = null;
            LoadCart();
            NavbarCartCount();
        }
        protected void DeleteItem_Click(object sender, EventArgs e)
        {
             HtmlButton btn = (HtmlButton)sender;
             int itemid = int.Parse(btn.ID.Replace("btnDelete_", ""));
             List<CartItem> list = (List<CartItem>)Session["cartitem"];
            foreach (CartItem item in list) 
            {
                if (item.CartProduct.ProductID == itemid)
                { 
                    list.Remove(item);
                    break;
                }
            }
            Session["cartitem"] = list;
            LoadCart();
            NavbarCartCount();
        }

        protected void ToCheckOut_ServerClick(object sender, EventArgs e)
        {
            List<CartItem> list = (List<CartItem>)Session["cartitem"];
            if (list != null)
            {
                // Ensure the redirect happens
                Response.Redirect("CheckOut.aspx");
            }
            else
            {
                error_message.InnerText = "giỏ hàng trống!!!";
                return;
            }
        }
        private void LoadCart()
        {
            cartbody.Controls.Clear();

            List<CartItem> items = (List<CartItem>)Session["cartitem"];
            List<Product> products = (List<Product>)Application["Products"];

            if (items == null || items.Count == 0 || products == null)
            {
                HtmlGenericControl row = new HtmlGenericControl("tr");
                HtmlGenericControl cell = new HtmlGenericControl("td");
                cell.Attributes["colspan"] = "5"; // Update colspan to 5 due to new column
                cell.InnerText = "Giỏ hàng của bạn đang trống.";
                row.Controls.Add(cell);
                cartbody.Controls.Add(row);
                // Reset total to 0
                total_amount.InnerText = "0.00 VND";
                return;
            }
            decimal totalPrice = 0m;
            
            foreach (CartItem item in items)
            {
                foreach (Product product in products)
                {
                    if (item.CartProduct.ProductID.Equals(product.ProductID))
                    {
                        totalPrice += product.ProductPrice * item.ProductQuantity;
                        HtmlGenericControl row = new HtmlGenericControl("tr");
                        row.Attributes["class"] = "cart-item";

                        //col1
                        HtmlGenericControl col1 = new HtmlGenericControl("td");
                        //col1.Attributes["class"] = "product-info";
                        //div
                        HtmlGenericControl centerdiv = new HtmlGenericControl("div");
                        centerdiv.Attributes["class"] = "product-info";

                        HtmlImage img = new HtmlImage();
                        img.Src = product.ImageUrl;
                        img.Alt = "product " + product.ProductID;
                        centerdiv.Controls.Add(img);

                        HtmlGenericControl span = new HtmlGenericControl();
                        span.InnerText = product.ProductName;
                        centerdiv.Controls.Add(span);
                        //div
                        col1.Controls.Add(centerdiv);
                        row.Controls.Add(col1);
                        //col1

                        //col2
                        HtmlGenericControl col2 = new HtmlGenericControl("td");
                        col2.ID = "price-" + product.ProductID;
                        col2.InnerText = product.ProductPrice.ToString();
                        row.Controls.Add(col2);
                        //col2

                        //col3
                        HtmlGenericControl col3 = new HtmlGenericControl("td");
                        //div
                        HtmlGenericControl centerdiv2 = new HtmlGenericControl("div");
                        centerdiv2.Attributes["class"] = "centerdiv";
                        //div
                        HtmlGenericControl divquantity = new HtmlGenericControl("div");
                        divquantity.Attributes["class"] = "quantity-control";

                        HtmlButton decreasebtn = new HtmlButton();
                        decreasebtn.InnerText = "-";
                        decreasebtn.ID = $"decreasebtn_{product.ProductID}";
                        decreasebtn.Attributes["type"] = "button";
                        decreasebtn.ServerClick += btnDecreaseQuantity_Click;
                        divquantity.Controls.Add(decreasebtn);

                        HtmlInputText input = new HtmlInputText();
                        input.Attributes["type"] = "text";
                        input.ID = "qty-" + product.ProductID;
                        input.Value = item.ProductQuantity.ToString();
                        input.Attributes["min"] = "1";
                        input.Attributes["readonly"] = "readonly";
                        divquantity.Controls.Add(input);

                        HtmlButton increasebtn = new HtmlButton();
                        increasebtn.InnerText = "+";
                        increasebtn.ID = $"increasebtn_{product.ProductID}";
                        increasebtn.ServerClick+= btnIncreaseQuantity_Click;
                        increasebtn.Attributes["type"] = "button";
                        divquantity.Controls.Add(increasebtn);

                        //div
                        //div
                        centerdiv2.Controls.Add(divquantity);
                        col3.Controls.Add(centerdiv2);
                        row.Controls.Add(col3);
                        //col3

                        //col4
                        HtmlGenericControl col4 = new HtmlGenericControl("td");
                        col4.Attributes["class"] = "subtotal";
                        col4.ID = "subtotal-" + product.ProductID;
                        col4.InnerText = (product.ProductPrice * item.ProductQuantity).ToString() + "VND";
                        row.Controls.Add(col4);
                        //col4


                        // Column 5: Delete Button
                        HtmlGenericControl col5 = new HtmlGenericControl("td");
                        HtmlButton deleteBtn = new HtmlButton();
                        deleteBtn.ID = $"btnDelete_{product.ProductID}";
                        deleteBtn.InnerText = "Xoá";
                        deleteBtn.Attributes["class"] = "delete-btn"; // Optional styling
                        deleteBtn.ServerClick += DeleteItem_Click;
                        col5.Controls.Add(deleteBtn);
                        row.Controls.Add(col5);

                        cartbody.Controls.Add(row);
                    }
                }
            }
            total_amount.InnerText = totalPrice.ToString() + "VND";
            // Add the Clear All button dynamically after the table
            HtmlButton clearButton = new HtmlButton();
            clearButton.ID = "btnClearCart";
            clearButton.InnerText = "Xoá Tất Cả";
            clearButton.Attributes["class"] = "clear-btn";
            clearButton.ServerClick += btnClearCart_Click;
            cartbody.Controls.Add(clearButton); // Add after the table
        }

    }
}