using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Text;

using System.Data;
using System.Data.OleDb;
namespace filmlervefilimler
{
    public partial class genel : System.Web.UI.MasterPage
    {
        public string h;
        DataSet ds2 = new DataSet();

        OleDbConnection baglanti = new OleDbConnection();
        public StringBuilder menutut = new StringBuilder(); //xml de görunmez ise build den rebuild yap bir kac kez

        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ad"] != null)
                {
                    Label5.Visible = true;
                    Label4.Visible = true;
                    string ad = Session["ad"].ToString();
                    Label4.Text = ad;
                    LinkButton1.Visible = true;
                }
            }

            Label2.Text = Application.Get("ziyaretci").ToString();

            Label3.Text = Application.Get("ToplamZiyaretci").ToString();
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            baglanti.Open();
            string sorgu = "select * from tur";
            OleDbCommand cmd = new OleDbCommand(sorgu, baglanti);
            OleDbDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            baglanti.Close();
            baglanti.Open();
            string sec = "select * from menu";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, baglanti);
            da.Fill(ds, "menu");
            menutut.Append("<ul class='menu__list'>");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                menutut.Append("<li class='menu__group'>");
                menutut.Append("<a class='menu__link' href='" + ds.Tables[0].Rows[i]["linki"] + "'>");
                menutut.Append(ds.Tables[0].Rows[i]["baslik"]);
                menutut.Append("</a></li>");

            }
            menutut.Append("</ul>");
            veriCek();
            for (int i = 0; i < ds.Tables["menu"].Rows.Count; i++)
            {
                h += "<li><a style='text-decoration:none; color:White;' href='" + ds2.Tables["menu"].Rows[i]["linki"] + "'>" + "->" + ds2.Tables["menu"].Rows[i]["baslik"];

            }
            h += "</li></ul>";

        }
        private void veriCek()
        {
            ds2.Clear();
            OleDbConnection baglanti = new OleDbConnection();
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/filmler.mdb");
            baglanti.Open();
            string sec = "select * from menu";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, baglanti);
            da.Fill(ds2, "menu");
            baglanti.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("index.aspx");
        }

    }
}