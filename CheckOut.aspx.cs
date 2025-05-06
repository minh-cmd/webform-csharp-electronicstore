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
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadProduct();
            Total_summary();
        }

        protected void redirectToSuccessfulBuy(object sender, EventArgs e)
        {
            Response.Redirect("OrderConfirmation.aspx");
        }
        private void Total_summary()
        {
            List<CartItem> list = (List<CartItem>) Session["cartitem"];
            decimal total = 0.00m;
            foreach (CartItem item in list) 
            {
                total += item.ProductQuantity * item.CartProduct.ProductPrice;
            }

            itemsummary.InnerText = total.ToString("F2") + " VND";
            total = total + 10;

            totalsummary.InnerText = total.ToString("F2") + " VND";
        }

        private void LoadProduct()
        {
            List<CartItem> products = (List<CartItem>)Session["cartitem"];
            foreach (CartItem product in products) 
            { 
                HtmlGenericControl div = new HtmlGenericControl("div");
                div.Attributes["class"] = "item";
                
                HtmlGenericControl div2 = new HtmlGenericControl("div");
                div2.Attributes["class"] = "item_name_and_image";
                HtmlImage image = new HtmlImage();
                image.Src = product.CartProduct.ImageUrl;
                HtmlGenericControl span = new HtmlGenericControl("span");
                span.InnerText = product.CartProduct.ProductName;
                
                div2.Controls.Add(image);
                div2.Controls.Add(span);

                div.Controls.Add(div2);


                HtmlGenericControl div3 = new HtmlGenericControl("div");
                div3.Attributes["class"] = "item_quantity";
                HtmlGenericControl h3 = new HtmlGenericControl("h3");
                h3.InnerHtml = "x"+product.ProductQuantity.ToString();

                div3.Controls.Add(h3);
                div.Controls.Add(div3);

                HtmlGenericControl div4 = new HtmlGenericControl("div");
                div4.Attributes["class"] = "item_total";
                HtmlGenericControl span3 = new HtmlGenericControl("span");
                span3.InnerText = (product.CartProduct.ProductPrice*product.ProductQuantity).ToString("F2") + "VND";
                div4.Controls.Add(span3);

                div.Controls.Add(div4);

                ItemContainer.Controls.Add(div);
            }
        }
    }
}