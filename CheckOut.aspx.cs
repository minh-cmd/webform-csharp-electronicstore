using btlwebcoban.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace btlwebcoban
{
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Total_summary();
        }

        protected void redirectToSuccessfulBuy(object sender, EventArgs e)
        {
            Response.Redirect("OrderConfirmation.aspx");
            Session["cartitem"] = null;
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
    }
}