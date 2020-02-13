using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace site_3
{
    public partial class index : System.Web.UI.Page
    {
        string[] klasördekiler;
        string[] resimler;
        int sayac;

        protected void Page_Load(object sender, EventArgs e)
        {
            resimleri_al_goster();
            if (!IsPostBack)
            {
                Session["oynat"] = "0";
                ImageButton2.ImageUrl = "~/icon/stop.png";
                sayac = 0;
                Session["sayac"] = sayac;
            }
        }
        void resimleri_al_goster()
        {
            klasördekiler = Directory.GetFiles(Server.MapPath("resim"));
            resimler = new string[klasördekiler.Count()];
            for( int i = 0; i<klasördekiler.Count();i++)
                resimler[i] = "resim/" + Path.GetFileName(klasördekiler[i]);

                Image1.ImageUrl = resimler[0];
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            sayac = int.Parse(Session["sayac"].ToString());
            sayac++;
            if (sayac == klasördekiler.Count())
                sayac = 0;
            Image1.ImageUrl = resimler[sayac];
            Session["sayac"] = sayac;
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            sayac = int.Parse(Session["sayac"].ToString());

            if (sayac == 0)
                sayac = klasördekiler.Count();
            sayac--;
            Image1.ImageUrl = resimler[sayac];
            Session["sayac"] = sayac;
            Timer1.Enabled = false;
            if (Session["oynat"] == "0")
            {
                ImageButton2.ImageUrl = "~/icon/newğlay.png";
            }
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            sayac = int.Parse(Session["sayac"].ToString());
            sayac++;
            if (sayac == klasördekiler.Count())
                sayac = 0;
            Image1.ImageUrl = resimler[sayac];
            Session["sayac"] = sayac;
            Timer1.Enabled = false;
            if (Session["oynat"] == "0")
            {
                ImageButton2.ImageUrl = "~/icon/newğlay.png";
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["oynat"] == "1")
            {
                sayac = int.Parse(Session["sayac"].ToString());
                Image1.ImageUrl = resimler[sayac];
                Timer1.Enabled = true;
                ImageButton2.ImageUrl = "~/icon/stop.png";
                Session["oynat"] = "0";
            }
            else
            {
                sayac = int.Parse(Session["sayac"].ToString());
                Image1.ImageUrl = resimler[sayac];
                Timer1.Enabled = false;
                ImageButton2.ImageUrl = "~/icon/newğlay.png";
                Session["oynat"] = "1";
            }
        }
    }
}