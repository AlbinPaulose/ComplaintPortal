using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject_ComplaintRegisteration.Admin
{
    public partial class ProductsPage : System.Web.UI.Page
    {
        BAL.Products_BAL productbal = new BAL.Products_BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (!IsPostBack)
            {
                GridView1.DataSource = productbal.getProducts();
                GridView1.DataBind();
            }*/

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}