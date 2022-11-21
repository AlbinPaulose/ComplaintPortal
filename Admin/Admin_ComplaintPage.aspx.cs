using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject_ComplaintRegisteration.Admin
{
    public partial class Admin_ComplaintPage : System.Web.UI.Page
    {
        BAL.Complaint_BAL complaintbal = new BAL.Complaint_BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = complaintbal.ViewAllComplaints();
                GridView1.DataBind();

                for (int i = 1; i <= 31; i++)
                {
                    FromDate.Items.Add(i.ToString());
                    ToDate.Items.Add(i.ToString());

                }
                for (int i = 1; i <= 12; i++)
                {
                    FromMonth.Items.Add(i.ToString());
                    ToMonth.Items.Add(i.ToString());

                }

                for (int i = DateTime.Now.Year; i >= 2000; i--)
                {
                    FromYear.Items.Add(i.ToString());
                    ToYear.Items.Add(i.ToString());

                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            complaintbal.FromDate = FromYear.SelectedValue + "-" + FromMonth.SelectedValue + "-" + FromDate.SelectedValue;
            complaintbal.ToDate = ToYear.SelectedValue + "-" + ToMonth.SelectedValue + "-" + ToDate.SelectedValue;
            GridView1.DataSource = complaintbal.ViewDateComplaints();
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList dropDownList = sender as DropDownList;
            string id = dropDownList.ID;
            string status = dropDownList.SelectedItem.Text;
            complaintbal.ComplaintStatus = status;

            GridViewRow gr = (GridViewRow)dropDownList.NamingContainer;
            int index = gr.RowIndex;
            int complaintId = Convert.ToInt32(GridView1.DataKeys[index].Value.ToString());
            complaintbal.ComplaintId = complaintId;

            int i = complaintbal.UpdateComplaint();
            if(i == 1)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + "updated successfully" + "');", true);
                GridView1.DataSource = complaintbal.ViewAllComplaints();
                GridView1.DataBind();
            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Response.Write("hiii");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList DropDownList1 = (e.Row.FindControl("DropDownList1") as DropDownList);
            }
        }
    }
}