using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace MiniProject_ComplaintRegisteration.BAL
{
    public class Registeration
    {
        private int _regUserid;
        private string _regName;
        private string _regPhone;
        private string _regEmail;
        private string _regGender;
        private string _regDob;

        DAL.Registeration registeration = new DAL.Registeration();
        public int RegUserid
        {
            get
            {
                return _regUserid;
            }
            set
            {
                _regUserid = value;
            }
        }
        public string RegName
        {
            get
            {
                return _regName;
            }
            set
            {
                _regName = value;
            }
        }
        public string RegEmail
        {
            get
            {
                return _regEmail;
            }
            set
            {
                _regEmail = value;
            }
        }
        public string RegPhone
        {
            get { return _regPhone; }
            set { _regPhone = value; }
        }
        public string RegGender
        {
            get
            {
                return _regGender;
            }
            set
            {
                _regGender = value;
            }

        }
       
        public string RegDob
        {
            get
            {
                return _regDob;
            }
            set
            {
                _regDob = value;
            }
        }
        

        //insert into registeration
        public int insertReg()
        {
            return registeration.registerationInsert(this);
        }

        //closing connection
        public SqlConnection close()
        {
            return registeration.Getclose();
        }

        //viewing registeration and login table using inner join
        public DataTable viewRegisteration()
        {
            return registeration.registerationView();
        }
    }
}