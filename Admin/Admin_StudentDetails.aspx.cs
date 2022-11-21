using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject_ComplaintRegisteration.Admin
{
    public partial class Admin_StudentDetails : System.Web.UI.Page
    {
        BAL.Registeration reg = new BAL.Registeration();
        BAL.Login_Bal loginBal = new BAL.Login_Bal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = reg.viewRegisteration();
                GridView1.DataSource = dt;
                GridView1.DataBind();

                foreach(GridViewRow row in GridView1.Rows)
                {
                    
                    LinkButton button = row.Cells[8].Controls[0] as LinkButton;

                    string userRole = row.Cells[7].Text;
                    //string userRole = (row.FindControl("status") as BoundColumn).DataField.ToString();
                    if (userRole == "not confirmed")
                    {
                        button.Visible = true;
                    }
                    else
                    {
                        button.Visible = false;
                    }
                }
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int userId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            loginBal.LoginId = userId;
            int i = loginBal.UserConfirmation();
            if (i == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + "Confirmed Successfully" + "');", true);

            }
            GridView1.DataSource = reg.viewRegisteration();
            GridView1.DataBind();

            foreach (GridViewRow row in GridView1.Rows)
            {

                LinkButton button = row.Cells[8].Controls[0] as LinkButton;

                string userRole = row.Cells[7].Text;
                //string userRole = (row.FindControl("status") as BoundColumn).DataField.ToString();
                if (userRole == "not confirmed")
                {
                    button.Visible = true;
                }
                else
                {
                    button.Visible = false;
                }
            }

        }
    }
}