using MiniProject_ComplaintRegisteration.BAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject_ComplaintRegisteration.Guest
{
    public partial class RegisterationPage : System.Web.UI.Page
    {
        BAL.Registeration Registeration_Bal = new BAL.Registeration();
        BAL.Login_Bal Login_Bal = new BAL.Login_Bal();

        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i <= 31; i++)
            {
                ddDate.Items.Add(i.ToString());
            }
            for (int i = 1; i <= 12; i++)
            {
                ddMonth.Items.Add(i.ToString());
            }
            for (int i = 1960; i <= DateTime.Now.Year; i++)
            {
                ddYear.Items.Add(i.ToString());
            }
        }

        protected void registerButton_Click(object sender, EventArgs e)
        {
            string dob = ddDate.SelectedValue + "/" + ddMonth.SelectedValue + "/" + ddYear.SelectedValue;

            Login_Bal.LoginUsername = UserTextBox1.Text;
            Login_Bal.LoginPassword = PasswordText.Text;
            object obj = Login_Bal.insertLog();
            Registeration_Bal.close();
            if (obj != null)
            {
                Registeration_Bal.RegUserid = Convert.ToInt32(obj);
                Registeration_Bal.RegName = NameText.Text;
                Registeration_Bal.RegEmail = EmailText.Text;
                Registeration_Bal.RegPhone = PhoneText.Text;
                Registeration_Bal.RegGender = RadioButtonList1.SelectedItem.Text;
                Registeration_Bal.RegDob = dob;
                int i = Registeration_Bal.insertReg();
                if (i == 1)
                {
                    NameText.Text = null;
                    EmailText.Text = null;
                    PhoneText.Text = null;
                    UserTextBox1.Text = null;
                    RadioButtonList1.ClearSelection();
                    ddDate.ClearSelection();
                    ddMonth.ClearSelection();
                    ddYear.ClearSelection();
                    string msg = "Successfully Registered";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + msg + "');", true);
                    //Response.Redirect("../LoginPage.aspx");
                }
                else
                {
                    string msg = "Something went wrong";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + msg + "');", true);

                }
            }
        }
    }
}