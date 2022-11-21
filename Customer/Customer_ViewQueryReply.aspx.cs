using MiniProject_ComplaintRegisteration.BAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject_ComplaintRegisteration.Customer
{
    public partial class Customer_ViewQueryReply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BAL.Query_BAL Query_BAL = new BAL.Query_BAL();
            if (!IsPostBack)
            {
                int qid = Convert.ToInt32(Request.QueryString["qid"]);
                Session["queryid"] = qid;
                Query_BAL.QueryId = qid;
                DataTable dt = Query_BAL.ViewSpecificQuery();
                if (dt != null)
                {
                    PRoductTextBox1.Text = dt.Rows[0]["product_name"].ToString();
                    QuestionTextBox.Text = dt.Rows[0]["query"].ToString();
                    ReplyTextBox.Text = dt.Rows[0]["reply"].ToString();

                }

            }
        }
    }
}