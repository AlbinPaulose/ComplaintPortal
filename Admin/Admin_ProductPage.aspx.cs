using MiniProject_ComplaintRegisteration.BAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject_ComplaintRegisteration.Admin
{
    public partial class Admin_ProductPage : System.Web.UI.Page
    {
        BAL.Products_BAL products_bal = new Products_BAL();
        //BAL.Products_BAL products_bal;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = products_bal.getProducts();
                GridView1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            products_bal.ProductName = ProductName_TextBox.Text;
            products_bal.ProductPrice = ProductPrice_TextBox.Text;

            products_bal.insertProducts();
            GridView1.DataSource = products_bal.getProducts();
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int productId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            TextBox productName = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
            TextBox productPrice = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];

            //string newProductPrice = productPrice.Text;

            products_bal.ProductId = productId;
            products_bal.ProductName = productName.Text;
            products_bal.ProductPrice = productPrice.Text;

            int i = products_bal.UpdateProducts();


            GridView1.EditIndex = -1;
            GridView1.DataSource = products_bal.getProducts();
            GridView1.DataBind();



        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = products_bal.getProducts();
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = products_bal.getProducts();
            GridView1.DataBind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int productId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            products_bal.ProductId = productId;
            int i = products_bal.DeleteProducts();
            GridView1.DataSource = products_bal.getProducts();
            GridView1.DataBind();
        }
    }
}