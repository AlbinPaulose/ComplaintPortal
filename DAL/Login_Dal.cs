using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace MiniProject_ComplaintRegisteration.DAL
{
    public class Login_Dal:Registeration
    {
        public object loginInsert(BAL.Login_Bal loginbal)
        {

            string qry = "INSERT INTO login_table VALUES('" + loginbal.LoginUsername + "','" + loginbal.LoginPassword + "','user','not confirmed');SELECT @@IDENTITY";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            object ob = cmd.ExecuteScalar();
            return ob;

        }

        //Login checking
        public DataTable loginFetch(BAL.Login_Bal loginbal)
        {
            string qry = "SELECT * FROM login_table WHERE username='" + loginbal.LoginUsername + "' AND password='" + loginbal.LoginPassword + "'";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;

        }

        public int UserConfirm(BAL.Login_Bal loginbal)
        {
            string qry = "update login_table set status = 'confirmed' where userid='"+loginbal.LoginId+"'";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            int i = cmd.ExecuteNonQuery();
            return i;
        }
    }
}