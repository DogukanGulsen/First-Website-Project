using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;//
using System.Data.OleDb;//

namespace site_3
{
    public partial class admintur : System.Web.UI.Page
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
                tutid = Request.QueryString["turid"];
                islem = Request.QueryString["islem"];
            }
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            baglanti.Open();
            string sorgu = "select * from tur";
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
                cmd2.CommandText = "delete from tur where kategori_id=@kategori_id";
                cmd2.Parameters.AddWithValue("@kategori_id", tutid);
                cmd2.ExecuteNonQuery();
                baglanti.Close();
                vericek();
            }
        }
        void vericek()
        {
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            baglanti.Open();
            string sorgu = "select * from tur";
            OleDbCommand cmd = new OleDbCommand(sorgu, baglanti);
            OleDbDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            baglanti.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            baglanti.Open();
            OleDbCommand ekle = new OleDbCommand();
            ekle.Connection = baglanti;
            ekle.CommandText = ("insert into tur(kategori_ad)Values(@kategori_ad)");
            ekle.Parameters.AddWithValue("@kategori_ad", TextBox1.Text);
            ekle.ExecuteNonQuery();
            baglanti.Close();
            vericek();
        }
    }
}