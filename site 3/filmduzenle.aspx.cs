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
    public partial class filmduzenle : System.Web.UI.Page
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
                id = Request.QueryString["filmid"];
                baglanti.Open();
                ds.Clear();
                string sec = "select * from film where film_id=" + id;
                OleDbDataAdapter da = new OleDbDataAdapter(sec, baglanti);
                da.Fill(ds, "film");
                filmid.Text = ds.Tables["film"].Rows[0]["film_id"].ToString();
                filmadi.Text = ds.Tables["film"].Rows[0]["filmadi"].ToString();
                yil.Text = ds.Tables["film"].Rows[0]["yil"].ToString();
                yonetmen.Text = ds.Tables["film"].Rows[0]["yonetmen"].ToString();
                icerik.Text = ds.Tables["film"].Rows[0]["icerik"].ToString();
                oyuncu.Text = ds.Tables["film"].Rows[0]["oyuncular"].ToString();
                Label1.Text = ds.Tables["film"].Rows[0]["tur_id"].ToString();
                Label2.Text = ds.Tables["film"].Rows[0]["afis"].ToString();
                Label3.Text = ds.Tables["film"].Rows[0]["fragman"].ToString();
                DropDownList1.SelectedValue = Label1.Text;
                baglanti.Close();
                baglanti.Open();
                string komut = "select * from tur ";
                OleDbCommand cmd2 = new OleDbCommand(komut, baglanti);
                OleDbDataReader dr2 = cmd2.ExecuteReader();
                DropDownList1.DataTextField = "kategori_ad";
                DropDownList1.DataValueField = "kategori_id";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
                baglanti.Close();
            }
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
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = baglanti;

                cmd.CommandText = "update film set filmadi=@filmadi,yil=@yil,oyuncular=@oyuncular,yonetmen=@yonetmen,icerik=@icerik,afis=@afis,fragman=@fragman,tur_id=@tur_id where film_id=@film_id";

                cmd.Parameters.AddWithValue("@filmadi", filmadi.Text);
                cmd.Parameters.AddWithValue("@yil", yil.Text);
                cmd.Parameters.AddWithValue("@oyuncular", oyuncu.Text);
                cmd.Parameters.AddWithValue("@yonetmen", yonetmen.Text);
                cmd.Parameters.AddWithValue("@icerik", icerik.Text);
                cmd.Parameters.AddWithValue("@afis", rsm);
                cmd.Parameters.AddWithValue("@fragman", video);
                cmd.Parameters.AddWithValue("@tur_id", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@film_id", filmid.Text);

                cmd.ExecuteNonQuery();
                baglanti.Close();
                Response.Redirect("adminfilm.aspx");
            }
            else
            {
                Response.Write("Başarısız İşlem.");
            }
        }
    }
}