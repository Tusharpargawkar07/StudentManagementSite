using Logger;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace StudentRegister
{
    public class Global : System.Web.HttpApplication
    {
        Log log ;

        public Global()
        {
            log = new Log("Global");
        }
        protected void Application_Start(object sender, EventArgs e)
        {
          
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Exception exception = Server.GetLastError();
            if (exception != null)
            {
                log.ErrorLog(exception);
                Server.ClearError();
                Server.Transfer("~/ErrorPage/ErrorPage.aspx");
            }
        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}