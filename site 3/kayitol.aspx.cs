using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.OleDb;
namespace site_3
{
    public partial class kayitol : System.Web.UI.Page
    {
        OleDbConnection baglanti = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; DATA Source=" + Server.MapPath("filmler.mdb");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if(ka.Text!= ""&& sifre.Text!= "" && mail.Text!="" && ad.Text!="")
                {
                    baglanti.Open();
                    OleDbCommand ekle = new OleDbCommand("insert into kullanici([ka],[sifre],[adsoyad],[mail])Values (@ka,@sifre,@adsoyad,@mail)", baglanti);
                    ekle.Connection = baglanti;
                    ekle.Parameters.AddWithValue("@ka", ka.Text);
                    ekle.Parameters.AddWithValue("@sifre", sifre.Text);
                    ekle.Parameters.AddWithValue("@adsoyad", ad.Text);
                    ekle.Parameters.AddWithValue("@mail", mail.Text);
                    ekle.ExecuteNonQuery();
                    baglanti.Close();
                    Label6.Visible = true;
                    Label6.Text = "Kayıt Başarı İle Oluşturuldu.";
                    Response.Redirect("giris.aspx");
                }
                else
                {
                    Label6.Visible = true;
                    Label6.Text = "*Hiçbir Alan Boş Geçilemez!";
                }
            }
            catch
            {
                Label6.Visible = true;
                Label6.Text = "*Bu Kullanıcı Adı İle Kayıt Daha Önce Oluşturuldu.";
            }
        }
    }
}