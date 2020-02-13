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
    public partial class baslikduzenle : System.Web.UI.Page
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
                id = Request.QueryString["baslik"];
                baglanti.Open();
                ds.Clear();
                string sec = "select * from menu where baslik = '" + id + "'";
                OleDbDataAdapter da = new OleDbDataAdapter(sec, baglanti);
                da.Fill(ds, "menu");
                TextBox1.Text = ds.Tables["menu"].Rows[0]["baslik"].ToString();
                TextBox2.Text = ds.Tables["menu"].Rows[0]["linki"].ToString();
                baglanti.Close();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            baglanti.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = baglanti;
            cmd.CommandText = "update menu set baslik=@baslik,linki=@linki where baslik=@baslik";
            cmd.Parameters.AddWithValue("@baslik", TextBox1.Text);
            cmd.Parameters.AddWithValue("@linki", TextBox2.Text);
            cmd.Parameters.AddWithValue("@baslik",TextBox1.Text);
            cmd.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("adminbaslik.aspx");
        }
    }
}