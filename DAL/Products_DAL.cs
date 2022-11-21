using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MiniProject_ComplaintRegisteration.DAL
{
    public class Products_DAL:Registeration
    {
       //BAL.Products_BAL Productsbal = new BAL.Products_BAL();
        public  DataTable getProductDetails()
        {
            string qry = "select * from product_table";
            SqlCommand cmd = new SqlCommand(qry,Getcon());
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            return dt;

        }

        public int insertProductDetails(BAL.Products_BAL products_BAL)
        {
            
            string qry = "insert into product_table values('" + products_BAL.ProductName + "','" + products_BAL.ProductPrice + "')";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
             return cmd.ExecuteNonQuery();
        }

        public int UpdateProductDetails(BAL.Products_BAL products_BAL)
        {
            string qry = "update product_table set product_name = '" + products_BAL.ProductName + "',product_price = '" + products_BAL.ProductPrice + "' where productid = '" + products_BAL.ProductId + "'";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            return cmd.ExecuteNonQuery();
        }

        public int DeleteProductDetail(BAL.Products_BAL products_BAL)
        {
            string qry = "delete from product_table where productid ='" + products_BAL.ProductId + "' ";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            return cmd.ExecuteNonQuery();
        }

        //fetching products
        public DataTable GetProductDetails(BAL.Products_BAL products_BAL)
        {
            string qry = "select * from product_table";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            DataTable ds = new DataTable();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            dataAdapter.Fill(ds);
            return ds;
        }
    }
}