using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epicobox
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = Username.Text;
            string password = Password.Text;
            string savedUsername = ConfigurationManager.AppSettings["Username"];
            string savedPassword = ConfigurationManager.AppSettings["Password"];
            if (username == savedUsername && password == savedPassword)
            {
                FormsAuthentication.SetAuthCookie(Username.Text, false);
                Response.Redirect(FormsAuthentication.DefaultUrl);
            }
            else
            {
                lblMessage.Visible = true;
            }

        }
    }
}