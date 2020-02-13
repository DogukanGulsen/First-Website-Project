using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace site_3
{
    public partial class giris : System.Web.UI.Page
    {
        OleDbConnection baglanti = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            OleDbCommand cmd = new OleDbCommand("select * from kullanici where ka='" + TextBox1.Text + "'and sifre='" + TextBox2.Text + "'");
            cmd.Connection = baglanti;
            OleDbDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Session["ad"] = TextBox1.Text;
                Response.Redirect("index.aspx");
            }
            else
            {
                Label6.Text = "*Başarısız Giriş";
            }
            baglanti.Close();
        }
    }
}