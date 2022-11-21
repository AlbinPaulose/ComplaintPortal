using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace MiniProject_ComplaintRegisteration.BAL
{
    public class Login_Bal
    {
        private int _loginId;
        private string _loginUsername;
        private string _loginPassword;
        private string _loginRole;
        private string _loginStatus;

        DAL.Login_Dal loginDal = new DAL.Login_Dal();
        public int LoginId
        {
            get { return _loginId; }
            set { _loginId = value; }
        }
        public string LoginUsername
        {
            get { return _loginUsername; }
            set { _loginUsername = value; }
        }
        public string LoginPassword
        {
            get { return _loginPassword; }
            set
            {
                _loginPassword = value;
            }
        }
        public string LoginRole
        {
            get { return _loginRole; }
            set { _loginRole = value; }
        }
        public string LoginSatus
        {
            get { return _loginStatus; }
            set { _loginStatus = value; }
        }

        public object insertLog()
        {
            return loginDal.loginInsert(this);
        }

        //login details fetching
        public DataTable fetchLog()
        {
            return loginDal.loginFetch(this);
        }

        //userconfirmation
        public int UserConfirmation()
        {
            return loginDal.UserConfirm(this);
        }
    }
}