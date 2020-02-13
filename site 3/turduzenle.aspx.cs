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
    public partial class turduzenle : System.Web.UI.Page
    {
        OleDbConnection baglanti = new OleDbConnection();
        DataSet ds = new DataSet();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            if (!IsPostBack)
            {
                if (Session["admin"] == null)
                    Response.Redirect("index.aspx");
                id = Request.QueryString["turid"];
                baglanti.Open();
                ds.Clear();
                string sec = "select * from tur where kategori_id=" + id;
                OleDbDataAdapter da = new OleDbDataAdapter(sec, baglanti);
                da.Fill(ds, "tur");
                TextBox1.Text = ds.Tables["tur"].Rows[0]["kategori_id"].ToString();
                TextBox2.Text = ds.Tables["tur"].Rows[0]["kategori_ad"].ToString();
                baglanti.Close();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            baglanti.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = baglanti;

            cmd.CommandText = "update tur set kategori_ad=@kategori_ad where kategori_id=@kategori_id";

            cmd.Parameters.AddWithValue("@kategori_ad", TextBox2.Text);
            cmd.Parameters.AddWithValue("@kategori_id", TextBox1.Text);

            cmd.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("admintur.aspx");
        }
    }
}