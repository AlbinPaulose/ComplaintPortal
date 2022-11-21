using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject_ComplaintRegisteration.Customer
{
    public partial class Customer_RegisterComplaint : System.Web.UI.Page
    {
        BAL.Products_BAL productsBAL = new BAL.Products_BAL();
        BAL.Complaint_BAL complaintbal = new BAL.Complaint_BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dr = productsBAL.GetProduct();
                DropDownList1.DataTextField = "product_name";
                DropDownList1.DataValueField = "productid";
                DropDownList1.DataSource = dr;
                DropDownList1.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            complaintbal.ProductId = Convert.ToInt32(DropDownList1.SelectedValue);
            complaintbal.UserId = Convert.ToInt32(Session["userid"].ToString());
            complaintbal.Complaint = TextBox1.Text;
            int i = complaintbal.InsertingComplaints();
            if (i == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + "Complaint Registered Successfully" + "');", true);
                TextBox1.Text = " ";

            }
        }
    }
}