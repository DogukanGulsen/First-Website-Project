using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.OleDb;

namespace site_3
{
    public partial class filmdetay : System.Web.UI.Page
    {
        OleDbConnection baglanti = new OleDbConnection();
        string filmid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ad"] != null)
            {
                string adi = Session["ad"].ToString();
                ad.Text = adi;
            }
            filmid = Request.QueryString["film_id"];
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            baglanti.Open();
            OleDbCommand komut = new OleDbCommand("select * from film where film_id=@film_id");
            komut.Parameters.AddWithValue("@film_id", filmid);
            komut.Connection = baglanti;
            OleDbDataReader dr = komut.ExecuteReader();
            baglanti.Close();


            baglanti.Open();
            OleDbCommand komut2 = new OleDbCommand("select * from yorum where film_id=@film_id and onay='true' ");
            komut2.Parameters.AddWithValue("@film_id", filmid);
            komut2.Connection = baglanti;
            OleDbDataReader dr2 = komut2.ExecuteReader();
            DataList3.DataSource = dr2;
            DataList3.DataBind();
            baglanti.Close();

            baglanti.Open();
            OleDbCommand komut3 = new OleDbCommand("select * from film where film_id=@film_id");
            komut3.Parameters.AddWithValue("@film_id", filmid);
            komut3.Connection = baglanti;
            OleDbDataReader dr3 = komut3.ExecuteReader();
            DataList2.DataSource = dr3;
            DataList2.DataBind();
            baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["ad"]!=null)
            {
                string adi = Session["ad"].ToString();
                baglanti.Open();
                string durum = "false";
                OleDbCommand ekle = new OleDbCommand("insert into yorum (icerik,film_id,kullanıcı_ad,onay) values(@icerik,@film_id,@kullanıcı_ad,@onay)");
                ekle.Connection = baglanti;
                ekle.Parameters.AddWithValue("@icerik", icerik.Text);
                ekle.Parameters.AddWithValue("@film_id", filmid);
                ekle.Parameters.AddWithValue("@kullanıcı_ad", adi);
                ekle.Parameters.AddWithValue("@onay", durum);
                ekle.ExecuteNonQuery();
                baglanti.Close();
            }
            else
            {
                Response.Redirect("giris.aspx");
            }
        }
    }
}