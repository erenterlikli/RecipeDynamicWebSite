using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class AdminKategoriler : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();
        string id = " ";
        string islem = " ";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                id = Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];
            }

            SqlCommand komut = new SqlCommand("Select *from Kategoriler", baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            //silme işlemi
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete from Kategoriler where KategoriId=@sil1", baglan.baglanti());
                komutsil.Parameters.AddWithValue("@sil1", id);
                komutsil.ExecuteNonQuery();
                baglan.baglanti().Close();

                Response.Write("<script> alert('Kategori başarıyla silindi!')</script>");

            }


            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("insert into Kategoriler(KategoriAd) values(@p1)", baglan.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();


            Response.Write("<script> alert('Kategori başarıyla eklendi!')</script>");
            TextBox1.Text = " ";
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}