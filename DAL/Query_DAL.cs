using MiniProject_ComplaintRegisteration.BAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MiniProject_ComplaintRegisteration.DAL
{
    public class Query_DAL:Registeration
    {
        public int InsertQuerys(BAL.Query_BAL querybal)
        {
            string q = "INSERT INTO query_table values('" + querybal.QueryProductId + "','" + querybal.QueryUserId + "','" + querybal.Query + "',' ','" + DateTime.Now.ToString("yyyy-MM-dd") + "')";
            SqlCommand cmd = new SqlCommand(q, Getcon());
            return cmd.ExecuteNonQuery();
        }

        public DataTable ViewAllQuerys()
        {
            string qry = "SELECT l.username,p.*,q.* FROM query_table q INNER JOIN login_table l ON l.userid= q.userid INNER JOIN product_table p ON p.productid = q.productid ORDER BY queryId Asc";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            DataTable dt = new DataTable();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            dataAdapter.Fill(dt);
            return dt;
        }

        public DataTable ViewSpecificQueryDetails(BAL.Query_BAL querybal)
        {
            string qry = "SELECT l.username,p.*,q.* FROM query_table q INNER JOIN login_table l ON l.userid= q.userid INNER JOIN product_table p ON p.productid = q.productid WHERE q.queryId='" + querybal.QueryId + "'";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            DataTable dt = new DataTable();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            dataAdapter.Fill(dt);
            return dt;
        }

        public int GiveReplyDetails(BAL.Query_BAL querybal)
        {
            string qry = "UPDATE  query_table SET reply = '" + querybal.QueryReply + "' where queryId = '" + querybal.QueryId + "'";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            return cmd.ExecuteNonQuery();
        }

        public DataTable GetSpecificUserQueryDetails(BAL.Query_BAL querybal)
        {
            string qry = "SELECT l.username,p.*,q.* FROM query_table q INNER JOIN login_table l ON l.userid= q.userid INNER JOIN product_table p ON p.productid = q.productid where q.userid='"+querybal.QueryUserId+"'";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            DataTable dt = new DataTable();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            dataAdapter.Fill(dt);
            return dt;
        }

        
        /*public DataTable ViewQueryDetails(BAL.Query_BAL querybal)
        {
            string qry = "SELECT p.*,q.* FROM query_table q INNER JOIN product_table p ON p.productid = q.productid AND userid = '" + complaintbal.UserId + "'";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            DataTable dt = new DataTable();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            dataAdapter.Fill(dt);
            return dt;
        }*/
    }
}