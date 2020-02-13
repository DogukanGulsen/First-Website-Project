using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

namespace site_3
{
    public partial class adminyorumaspx : System.Web.UI.Page
    {
        OleDbConnection baglanti = new OleDbConnection();
        DataSet ds = new DataSet();
        string tutid = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["admin"] == null)
                    Response.Redirect("index.aspx");
                tutid = Request.QueryString["yorumid"];
                islem = Request.QueryString["islem"];
            }
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            baglanti.Open();
            string sorgu = "select * from yorum where onay='false'";
            OleDbCommand cmd = new OleDbCommand(sorgu, baglanti);
            OleDbDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            baglanti.Close();
            if (islem == "sil")
            {
                baglanti.Open();
                OleDbCommand cmd2 = new OleDbCommand();
                cmd2.Connection = baglanti;
                cmd2.CommandText = "delete from yorum where kimlik=@kimlik";
                cmd2.Parameters.AddWithValue("@Kimlik", tutid);
                cmd2.ExecuteNonQuery();
                baglanti.Close();
                vericek();
            }
            else if (islem == "onayla")
            {
                string durum = "true";
                baglanti.Open();
                OleDbCommand cmd2 = new OleDbCommand();
                cmd2.Connection = baglanti;

                cmd2.CommandText = "update yorum set onay=@onay where kimlik=@kimlik";
                cmd2.Parameters.AddWithValue("@onay", durum);
                cmd2.Parameters.AddWithValue("@Kimlik", tutid.ToString());

                cmd2.ExecuteNonQuery();
                baglanti.Close();
            }
        }

        void vericek()
        {
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            baglanti.Open();
            string sorgu = "select * from yorum where onay='false'";
            OleDbCommand cmd = new OleDbCommand(sorgu, baglanti);
            OleDbDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            baglanti.Close();
        }
    }
}