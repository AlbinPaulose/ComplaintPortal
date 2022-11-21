using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject_ComplaintRegisteration.Guest
{
    public partial class LoginPage : System.Web.UI.Page
    {
        BAL.Login_Bal loginbal = new BAL.Login_Bal();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            string username = nameTextbox.Text;
            string password = passwordTextbox.Text;


            loginbal.LoginUsername = username;
            loginbal.LoginPassword = password;
            DataTable dt = loginbal.fetchLog();
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0][3].ToString() == "admin")
                {
                    Response.Redirect("../Admin/Admin_HomePage.aspx");

                }
                else if (dt.Rows[0][3].ToString() == "user" && dt.Rows[0][4].ToString() == "confirmed")
                {
                    Session["userid"]=dt.Rows[0][0].ToString();
                    string msg = "Login Successfull!!!";
                    Label1.Text = msg;
                    Response.Redirect("../Customer/Customer_HomePage.aspx");
                }
                else if (dt.Rows[0][3].ToString() == "user" && dt.Rows[0][4].ToString() != "confirmed")
                {
                    string msg = "Permission Denied! Waiting for confirmation";
                    Label1.Text = msg;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + msg + "');", true);
                }
               

            }
            else
            {
                string msg = "Username and password is not correct Try again...!!!";
                Label1.Text = msg;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + msg + "');", true);
            }
        }
    }
}