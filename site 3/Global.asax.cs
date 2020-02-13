using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace site_3
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["ziyaretci"] = 0;

            Application["ToplamZiyaretci"] = Convert.ToInt32(Application["ToplamZiyaretci"]) + 1;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();// yükleme sırasında çakışmayı engellemek için kullanılır.
            Application["ziyaretci"] = (int)Application["ziyaretci"] + 1;
            Application.UnLock(); // engellemeyi kaldırdık sonraki kullanıcı giriş yapabilsin diye

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();// yükleme sırasında çakışmayı engellemek için kullanılır.
            Application["ziyaretci"] = (int)Application["ziyaretci"] - 1;
            Application.UnLock(); // engellemeyi kaldırdık sonraki kullanıcı giriş yapabilsin diye

        }

        protected void Application_End(object sender, EventArgs e)
        {
            Application.Remove("ziyaretci"); // ziyaretçiyi kaldır
        }
    }
}