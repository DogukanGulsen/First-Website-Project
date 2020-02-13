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
    public partial class adminduyuru : System.Web.UI.Page
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
                tutid = Request.QueryString["duyuruid"];
                islem = Request.QueryString["islem"];
            }
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            baglanti.Open();
            string sorgu = "select * from duyuru";
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
                cmd2.CommandText = "delete from duyuru where duyuruid=@duyuruid";
                cmd2.Parameters.AddWithValue("@duyuruid", tutid);
                cmd2.ExecuteNonQuery();
                baglanti.Close();
                vericek();
            }
        }
        void vericek()
        {
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            baglanti.Open();
            string sorgu = "select * from duyuru";
            OleDbCommand cmd = new OleDbCommand(sorgu, baglanti);
            OleDbDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            baglanti.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("filmafis/" + FileUpload1.FileName));
                string rsm = "~/filmafis" + FileUpload1.FileName;
                baglanti.Open();

                OleDbCommand ekle = new OleDbCommand();
                ekle.Connection = baglanti;
                ekle.CommandText = ("insert into duyuru(baslik,icerik,gorsel)Values(@baslik,@icerik,@gorsel)");
                ekle.Parameters.AddWithValue("@baslik", TextBox1.Text);
                ekle.Parameters.AddWithValue("@icerik", TextBox2.Text);
                ekle.Parameters.AddWithValue("@gorsel", rsm);
                ekle.ExecuteNonQuery();
                baglanti.Close();
                vericek();
            }
            else
            {
                Response.Write("Başarısız İşlem Lütfen Görsel Seçiniz!");
            }
        }
    }
}