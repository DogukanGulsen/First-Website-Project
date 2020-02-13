using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.OleDb;
namespace site_3
{
    public partial class duyurudetay : System.Web.UI.Page
    {
        OleDbConnection baglanti = new OleDbConnection();
        string duyuruid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            duyuruid = Request.QueryString["duyuruid"];
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            baglanti.Open();
            OleDbCommand komut = new OleDbCommand("select * from duyuru where duyuruid=@duyuruid");
            komut.Parameters.AddWithValue("@duyuruid", duyuruid);
            komut.Connection = baglanti;
            OleDbDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            baglanti.Close();
        }
    }
}