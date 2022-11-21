using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MiniProject_ComplaintRegisteration.BAL
{

    public class Products_BAL
    {
        DAL.Products_DAL ProductsDAL = new DAL.Products_DAL();
        private string _productName;
        private int _productId;
        private string _productPrice;

        public int ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        public string ProductName
        {
            get { return _productName; }
            set { _productName = value; }
        }
        public string ProductPrice
        {
            get { return _productPrice; }
            set{ _productPrice = value; }
        }

        //Fetching Products details
        public DataTable getProducts()
        {
            return ProductsDAL.getProductDetails();
        }

        //insert into prodc=uct table
        public int insertProducts()
        {
            return ProductsDAL.insertProductDetails(this);
        }

        //updating product table
        public int UpdateProducts()
        {
            return ProductsDAL.UpdateProductDetails(this);
        }

        //delete product

        public int DeleteProducts()
        {
            return ProductsDAL.DeleteProductDetail(this);
        }

        //fetching products
        public DataTable GetProduct()
        {
            return ProductsDAL.GetProductDetails(this);
        }
    }
}