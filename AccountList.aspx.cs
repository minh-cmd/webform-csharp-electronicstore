using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace btlwebcoban
{
    public partial class AccountList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserLoad();
        }

        private void UserLoad()
        {
            List<User> user = (List<User>)Application["Users"];

            foreach (User a in user)
            {
                Response.Write(a.Username);
                Response.Write(a.Password);
                Response.Write(a.LastName);
                Response.Write(a.FirstName);
                Response.Write(a.Email);
                Response.Write(a.Phone);
                Response.Write(a.Country);
                Response.Write(a.Gender);
                Response.Write(a.Address);
                Response.Write("            ");
            }
        }
    }
}
