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
    public partial class adminfilmaspx : System.Web.UI.Page
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
                baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
                tutid = Request.QueryString["film_id"];
                islem = Request.QueryString["islem"];

                string komut = "select * from tur";
                OleDbCommand cmd2 = new OleDbCommand(komut, baglanti);
                baglanti.Open();
                OleDbDataReader dr2 = cmd2.ExecuteReader();
                DropDownList1.DataTextField = "kategori_ad";
                DropDownList1.DataValueField = "kategori_id";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
                baglanti.Close();
            }
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            baglanti.Open();
            string sorgu = "select * from film";
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
                cmd2.CommandText = "delete from film where film_id=@filmid";
                cmd2.Parameters.AddWithValue("@filmid", tutid);
                cmd2.ExecuteNonQuery();
                baglanti.Close();
                vericek();
            }
        }

        void vericek()
        {
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            baglanti.Open();
            string sorgu = "select * from film";
            OleDbCommand cmd = new OleDbCommand(sorgu, baglanti);
            OleDbDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            baglanti.Close();

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (FileUpload1.HasFile && FileUpload2.HasFile)
            {

                FileUpload1.SaveAs(Server.MapPath("filmafis/" + FileUpload1.FileName));
                string rsm = "~/filmafis/" + FileUpload1.FileName;
                FileUpload2.SaveAs(Server.MapPath("filmafis/" + FileUpload2.FileName));
                string video = "~/filmafis/" + FileUpload2.FileName;
                baglanti.Open();
                OleDbCommand ekle = new OleDbCommand();
                ekle.Connection = baglanti;
                ekle.CommandText = ("insert into film(filmadi,yil,oyuncular,yonetmen,icerik,afis,fragman,tur_id)Values(@filmadi,@yil,@oyuncular,@yonetmen,@icerik,@afis,@fragman,@tur_id)");
                ekle.Parameters.AddWithValue("@filmadi", filmadi.Text);
                ekle.Parameters.AddWithValue("@yil", yıl.Text);
                ekle.Parameters.AddWithValue("@oyuncular", oyuncu.Text);
                ekle.Parameters.AddWithValue("@yonetmen", yonetmen.Text);
                ekle.Parameters.AddWithValue("@icerik", icerik.Text);
                ekle.Parameters.AddWithValue("@afis", rsm);
                ekle.Parameters.AddWithValue("@fragman", video);
                ekle.Parameters.AddWithValue("@tur_id", DropDownList1.SelectedValue);
                ekle.ExecuteNonQuery();
                baglanti.Close();
                vericek();
                filmadi.Text = "";
                yıl.Text = "";
                oyuncu.Text = "";
                yonetmen.Text = "";
                icerik.Text = "";
            }
            else
            {
                Response.Write("Başarısız İşlem!");
            }
        }
    }
}