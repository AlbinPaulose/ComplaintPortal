using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject_ComplaintRegisteration.Customer
{
    public partial class Customer_ViewComplaint : System.Web.UI.Page
    {
        BAL.Complaint_BAL complaintbal = new BAL.Complaint_BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                complaintbal.UserId = Convert.ToInt32(Session["userid"].ToString());
                GridView1.DataSource = complaintbal.ViewComplaints();
                GridView1.DataBind();
            }
        }
    }
}