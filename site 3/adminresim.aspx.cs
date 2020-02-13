using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;

namespace site_3
{
    public partial class adminresim : System.Web.UI.Page
    {
        string[] klasordekiler;
        string[] resimler;

        void resimleri_al_goster()
        {
            klasordekiler = Directory.GetFiles(Server.MapPath("resim")); // server matpath deki resim  kalsöründeki dosyaları getir.
            resimler = new string[klasordekiler.Count()];
            for (int i = 0; i < klasordekiler.Count(); i++)
            {
                resimler[i] = "/resim/" + Path.GetFileName(klasordekiler[i]); // resimin bulunduğu klasördeki adını getir.

                DataList1.DataSource = resimler; 
                DataList1.DataBind();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            resimleri_al_goster();
            if (!IsPostBack)
            {
                if (Session["admin"] == null)
                    Response.Redirect("index.aspx");
                for (int i = 0; i < klasordekiler.Count(); i++)
                {
                    string rsm = resimler[i];
                    ListItem a = new ListItem();
                    a.Text = rsm;
                    DropDownList1.Items.Add(a);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/resim/") + FileUpload1.FileName);// resimlerden fileuploaddaki resmin adını çekip kaydedeiyor
                string rsm = "/resim/" + FileUpload1.FileName;
                // server.maphpath serverdaki resim dosyasına yönlendir. file uploaddan aldıgı dosya ismini sunucuya kaydeder.
                ListItem a = new ListItem();
                a.Text = rsm;
                DropDownList1.Items.Add(a);
                Label1.Text = "resim eklendi";
                resimleri_al_goster();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            File.Delete(Server.MapPath("" + DropDownList1.SelectedItem));
            resimleri_al_goster();
        }
    }
}