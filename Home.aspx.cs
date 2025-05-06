using btlwebcoban.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace btlwebcoban
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductLoad();
        }
        protected void btnaddtocart_click(object sender, EventArgs e)
        {
            HtmlButton btn = (HtmlButton)sender;
            int productid = int.Parse(btn.ID.Replace("btnAddToCart_", ""));
            string fieldName = Request.Form.AllKeys.FirstOrDefault(k => k.EndsWith("quantity_" + productid)); //the maincontent of master page made me code this line
            string productquanity = Request.Form[fieldName];


            int productQuantity = int.Parse(productquanity);
/*            if (!string.IsNullOrEmpty(productquanity))
            {
                int.TryParse(productquanity, out productQuantity);
            }*/

            List<Product> list = (List<Product>)Application["HomeProducts"];
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
        protected void btnBuyNow_click(object sender, EventArgs e)
        {
            HtmlButton btn = (HtmlButton)sender;
            int productid = int.Parse(btn.ID.Replace("btnBuyNow_", ""));
            string productquanity = Request.Form.Get("quantity_" + productid);

            int productQuantity = 1;
            if (!string.IsNullOrEmpty(productquanity))
            {
                int.TryParse(productquanity, out productQuantity);
            }

            List<Product> list = (List<Product>)Application["HomeProducts"];
            List<CartItem> cartlist;


            foreach (Product p in list)
            {
                if (p.ProductID.Equals(productid))
                {
                    if (Session["cartitem"]==null)
                    {
                        cartlist = new List<CartItem>();
                    }
                    else
                    {
                        cartlist = (List<CartItem> )Session["cartitem"];
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
        protected void btnProductDetail_Click(object sender, EventArgs e)
        {
            HtmlGenericControl div = (HtmlGenericControl)sender;
            int id = int.Parse(div.ID.Replace("product_",""));
            Response.Redirect($"ProductDetailPage.aspx?ProductID={id}");
        }
        private void ProductLoad()
        {
            List<Product> products = (List<Product>)Application["HomeProducts"];

            foreach (Product a in products)
            {
                HtmlGenericControl divproduct = new HtmlGenericControl("div");
                divproduct.Attributes["class"] = "product";
                divproduct.ID = "product_"+a.ProductID;

                // Create a LinkButton to wrap the product content
                /*LinkButton productLink = new LinkButton();
                productLink.ID = $"product_{a.ProductID}";
                productLink.Click += btnProductDetail_Click;*/

                HtmlImage img = new HtmlImage();
                img.Src = a.ImageUrl;
                img.Alt = "Product" + a.ProductID;
                img.Attributes["onclick"] = $"window.location.href='ProductDetailPage.aspx?ProductID={a.ProductID}'";
                divproduct.Controls.Add(img);

                HtmlGenericControl divproductinfo = new HtmlGenericControl("div");
                divproductinfo.Attributes["class"] = "product_info";

                HtmlGenericControl h3 = new HtmlGenericControl("h3");
                h3.InnerText = a.ProductName;
                divproductinfo.Controls.Add(h3);

                HtmlGenericControl p = new HtmlGenericControl("p");
                p.InnerText = a.ProductPrice + "VND";
                divproductinfo.Controls.Add(p);

                divproduct.Controls.Add(divproductinfo);

                HtmlGenericControl divproductaction = new HtmlGenericControl("div");
                divproductaction.Attributes["class"] = "product_actions";

                HtmlGenericControl divproductquantitycontrol = new HtmlGenericControl("div");
                divproductquantitycontrol.Attributes["class"] = "product_quantity_control";

                HtmlButton decreasebtn = new HtmlButton();
                decreasebtn.Attributes["class"] = "decrease";
                decreasebtn.Attributes["type"] = "button";
                decreasebtn.Attributes["onclick"] = $"btn_DecreaseQuantity_onclick('{a.ProductID}')";
                decreasebtn.InnerText = "-";
                divproductquantitycontrol.Controls.Add(decreasebtn);

                HtmlInputText input = new HtmlInputText();
                input.Attributes["type"] = "number";
                input.Attributes["min"] = "1";
                input.Value = "1";
                input.ID = "quantity_" + a.ProductID; // e.g., "quantity_1"
                input.Name = "quantity_" + a.ProductID; // Match the ID
                input.Attributes["name"] = 
                input.Attributes["readonly"] = "readonly";
                input.Attributes["class"] = "quantity";
                divproductquantitycontrol.Controls.Add(input);

                HtmlButton increasebtn = new HtmlButton();
                increasebtn.Attributes["type"] = "button";
                increasebtn.Attributes["class"] = "increase";
                increasebtn.Attributes["onclick"] = $"btn_IncreaseQuantity_onclick('{a.ProductID}')";
                increasebtn.InnerText = "+";
                divproductquantitycontrol.Controls.Add(increasebtn);

                divproductaction.Controls.Add(divproductquantitycontrol);

                HtmlGenericControl divproductbutton = new HtmlGenericControl("div");
                divproductbutton.Attributes["class"] = "product_button";

                HtmlButton btnaddtocart = new HtmlButton();
                btnaddtocart.Attributes["class"] = "add_to_cart";
                btnaddtocart.Attributes["type"] = "button";
                btnaddtocart.ID = $"btnAddToCart_{a.ProductID}";
                btnaddtocart.ServerClick += btnaddtocart_click;
                btnaddtocart.InnerText = "Thêm vào giỏ";
                divproductbutton.Controls.Add(btnaddtocart);

                HtmlButton btnbuynow = new HtmlButton();
                btnbuynow.Attributes["class"] = "buy_now";
                btnbuynow.Attributes["type"] = "button";
                btnbuynow.ID = $"btnBuyNow_{a.ProductID}";
                btnbuynow.InnerText = "Mua Ngay";
                btnbuynow.ServerClick += btnBuyNow_click;
                divproductbutton.Controls.Add(btnbuynow);

                divproductaction.Controls.Add(divproductbutton);
                divproduct.Controls.Add(divproductaction);

                ProductContainer.Controls.Add(divproduct);

                /*stringBuilder.AppendFormat("<img src=\"{0}\" alt=\"Product{1}\">", a.ImageUrl, a.ProductID);
                    stringBuilder.Append("<div class=\"product_info\">");

                            stringBuilder.AppendFormat("<h3>{0}</h3>", a.ProductName);
                            stringBuilder.AppendFormat("<p>{0}</p>", a.ProductPrice);
                        stringBuilder.Append("</div>");
                    stringBuilder.Append("<div class=\"product_actions\">");
                        stringBuilder.Append("<div class=\"product_quantity_control\">");
                            stringBuilder.Append("<button class=\"decrease\">-</button>");
                            stringBuilder.AppendFormat("<input type=\"number\" min=\"1\" value=\"1\" name=\"quantity_{0}\" class=\"quantity\">", a.ProductID);
                            stringBuilder.Append("<button class=\"increase\">+</button>");
                        stringBuilder.Append("</div>");
                            stringBuilder.Append("<button class=\"add_to_cart\">Add to Cart</button>");
                            stringBuilder.Append("<button class=\"buy_now\" id=\"Button1\" runat=\"server\" onserverclick=\"btnBuyNow_click\">Buy Now</button>");
                        stringBuilder.Append("</div>");
                    stringBuilder.Append("</div>");*/

                /*divproduct.InnerHtml = stringBuilder.ToString();

                HtmlGenericControl divbutton = new HtmlGenericControl("div");
                divbutton.Attributes["class"] = "product_button";*/
            }
        }

    }
}