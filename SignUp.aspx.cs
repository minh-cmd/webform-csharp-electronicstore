using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace btlwebcoban
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string username = Request.Form["username"]?.Trim();
                string password1 = Request.Form["password1"];
                string password2 = Request.Form["password2"];
                string email = Request.Form["email"].Trim();
                string phone = Request.Form["phone"].Trim();
                string lastName = Request.Form["lastname"].Trim();
                string firstName = Request.Form["firstname"].Trim();
                string birthday = Request.Form["birthday"];
                string gender = Request.Form["gender"];
                string address = Request.Form["diachi"].Trim();

                if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password1) ||
                    string.IsNullOrEmpty(password2) || string.IsNullOrEmpty(email) ||
                    string.IsNullOrEmpty(phone) || string.IsNullOrEmpty(lastName) ||
                    string.IsNullOrEmpty(firstName) || string.IsNullOrEmpty(birthday) ||
                    string.IsNullOrEmpty(gender) || string.IsNullOrEmpty(address)
                    )
                {
                    errorMessage.InnerHtml = "Vui lòng điền đầy đủ các trường bắt buộc.";
                    return;
                }

                if (password1 != password2)
                {
                    errorMessage.InnerHtml = "Mật khẩu không khớp.";
                    return;
                }
                // No lock
                List<User> users = (List<User>)Application["Users"];
                if (users == null)
                {
                    users = new List<User>();
                }

                bool usernameExists = false;
                foreach (User user in users)
                {
                    if (user.Username.Equals(username, StringComparison.OrdinalIgnoreCase))
                    {
                        usernameExists = true;
                        break;
                    }
                }

                if (usernameExists)
                {
                    errorMessage.InnerHtml = "Tài khoản đã tồn tại. Vui lòng chọn tài khoản khác.";
                    return;
                }

                User newUser = new User
                {
                    Username = username,
                    Password = password1,
                    LastName = lastName,
                    FirstName = firstName,
                    Email = email,
                    Phone = phone,
                    Birthday = birthday,
                    Gender = gender,
                    Address = address
                };

                users.Add(newUser);
                Application["Users"] = users;

                Response.Redirect("AccountList.aspx");
            }
        }
    }
}