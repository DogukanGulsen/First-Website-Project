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
    public partial class duyuruduzenle : System.Web.UI.Page
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
                id = Request.QueryString["duyuruid"];
                baglanti.Open();
                ds.Clear();
                string sec = "select * from duyuru where duyuruid=" + id;
                OleDbDataAdapter da = new OleDbDataAdapter(sec, baglanti);
                da.Fill(ds, "duyuru");
                duyuruid.Text = ds.Tables["duyuru"].Rows[0]["duyuruid"].ToString();
                baslik.Text = ds.Tables["duyuru"].Rows[0]["baslik"].ToString();
                icerik.Text = ds.Tables["duyuru"].Rows[0]["icerik"].ToString();
                Label1.Text = ds.Tables["duyuru"].Rows[0]["gorsel"].ToString();

                baglanti.Close();

            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("filmafis/" + FileUpload1.FileName));
                string rsm = "~/filmafis/" + FileUpload1.FileName;
                baglanti.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = baglanti;

                cmd.CommandText = "update duyuru set  baslik=@baslik,icerik=@icerik,gorsel=@gorsel  where duyuruid=@duyuruid";

                cmd.Parameters.AddWithValue("@baslik", baslik.Text);
                cmd.Parameters.AddWithValue("@icerik", icerik.Text);
                cmd.Parameters.AddWithValue("@gorsel", rsm);
                cmd.Parameters.AddWithValue("@duyuruid", duyuruid.Text);

                cmd.ExecuteNonQuery();
                baglanti.Close();
                Response.Redirect("adminduyuru.aspx");
            }
            else
            {
                Response.Write("Başarısız İşlem.");
            }
        }
    }
}