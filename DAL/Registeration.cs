using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace MiniProject_ComplaintRegisteration.DAL
{
    public class Registeration
    {
        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();

        public Registeration()
        {
            string conn = ConfigurationManager.ConnectionStrings["connectivity"].ConnectionString;
            con = new SqlConnection(conn);
            cmd.Connection = con;
        }

        public SqlConnection Getcon()
        {
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            return con;
        }

        public SqlConnection Getclose()
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            return con;
        }
        //insert into registeration table
        public int registerationInsert(BAL.Registeration registerationbal)
        {
            string qry = "insert into registeration_table values('" + registerationbal.RegUserid + "','" + registerationbal.RegEmail + "','" + registerationbal.RegName + "','" + registerationbal.RegPhone + "','" + registerationbal.RegGender + "','" + registerationbal.RegDob + "')";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            return cmd.ExecuteNonQuery();
        }

        //viewing registeration table and login table using inner join
        public DataTable registerationView()
        {
            string qry = "select r.*,l.* from registeration_table r inner join login_table l on r.userid = l.userid where l.role='user' order by l.userid desc";
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            return dt;
        }
    }
}