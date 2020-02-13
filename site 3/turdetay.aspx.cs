using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace site_3
{
    public partial class turdetay : System.Web.UI.Page
    {
        OleDbConnection baglanti = new OleDbConnection();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["kategori_id"];
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            baglanti.Open();
            OleDbCommand komut = new OleDbCommand("select * from film where tur_id=@kategoriid");
            komut.Parameters.AddWithValue("@kategoriid", kategoriid);
            komut.Connection = baglanti;
            OleDbDataReader dr2 = komut.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            baglanti.Close();
        }
    }
}