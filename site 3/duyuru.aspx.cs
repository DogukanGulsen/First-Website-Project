using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace site_3
{
    public partial class duyuru : System.Web.UI.Page
    {
        OleDbConnection baglanti = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            string sorgu = "select * from duyuru";
            OleDbCommand komut = new OleDbCommand(sorgu,baglanti);
            baglanti.Open();
            OleDbDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}