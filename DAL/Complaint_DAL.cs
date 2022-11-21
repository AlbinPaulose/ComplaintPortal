using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MiniProject_ComplaintRegisteration.DAL
{
    public class Complaint_DAL:Registeration
    {
        public int InsertComplaint(BAL.Complaint_BAL complaintbal)
        {
            string q = "INSERT INTO complaint_table values('" + complaintbal.ProductId + "','" + complaintbal.UserId + "','" + complaintbal.Complaint + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','not processed')";
            SqlCommand cmd = new SqlCommand(q, Getcon());
            return cmd.ExecuteNonQuery();
        }

        public DataTable ViewComplaint(BAL.Complaint_BAL complaintbal)
        {
            string qry = "SELECT p.*,c.* FROM complaint_table c INNER JOIN product_table p ON p.productid = c.productid AND userid = '"+complaintbal.UserId+"'";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            DataTable dt = new DataTable();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            dataAdapter.Fill(dt);
            return dt;
        }

        //view complaint of all users
        public DataTable ViewAllComplaint(BAL.Complaint_BAL complaintbal)
        {
            string qry = "SELECT l.username,p.*,c.* FROM complaint_table c INNER JOIN login_table l ON l.userid= c.userid INNER JOIN product_table p ON p.productid = c.productid";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            DataTable dt = new DataTable();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            dataAdapter.Fill(dt);
            return dt;
        }

        //view complaint via date range
        public DataTable ViewDateComplaint(BAL.Complaint_BAL complaintbal)
        {
            string qry = "SELECT l.username,p.*,c.* FROM complaint_table c INNER JOIN login_table l ON l.userid= c.userid INNER JOIN product_table p ON p.productid = c.productid WHERE c.date BETWEEN '"+complaintbal.FromDate+"'  AND '"+complaintbal.ToDate+"' ";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            DataTable dt = new DataTable();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            dataAdapter.Fill(dt);
            return dt;
        }

        public int UpdateComplaint(BAL.Complaint_BAL complaintbal)
        {
            string qry = "update complaint_table set status = '" + complaintbal.ComplaintStatus + "' where complaintid = '"+complaintbal.ComplaintId+"'";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            return cmd.ExecuteNonQuery();
        }
    }
}