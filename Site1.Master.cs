using btlwebcoban.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace btlwebcoban
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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

        public void NavbarCartCount()
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
        protected void SearchBar(object sender, EventArgs e)
        {
            string searchTerm = Request.Form.Get("search");
            if (!string.IsNullOrEmpty(searchTerm))
            {
                Response.Redirect("ProductPage.aspx?search=" + searchTerm);
            }
        }
    }
}