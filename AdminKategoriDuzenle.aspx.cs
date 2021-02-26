using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class AdminKategoriDuzenle : System.Web.UI.Page
    {
        string id = " ";
        SqlBaglantisi baglan = new SqlBaglantisi();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriId"];

            if (Page.IsPostBack == false) //sayfayı bir kere yüklersen butona her tıklamada buraya tekrar dönmesin.
            {
                SqlCommand komut = new SqlCommand("Select *from Kategoriler where KategoriId=@p1", baglan.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    txtKategori.Text = oku[1].ToString();
                    txtAdet.Text = oku[2].ToString();
                }
                baglan.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName)); //resmin kaydedilecek yeri ve ismi belirleme.
            SqlCommand komut2 = new SqlCommand("Update Kategoriler set KategoriAd=@a1, KategoriAdet=@a2, KategoriResim= @a4 where KategoriId=@a3", baglan.baglanti());
            komut2.Parameters.AddWithValue("@a1", txtKategori.Text);
            komut2.Parameters.AddWithValue("@a2", txtAdet.Text);
            komut2.Parameters.AddWithValue("@a3", id);
            komut2.Parameters.AddWithValue("@a4", "~/Resimler/" + FileUpload1.FileName);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();

            Response.Write("<script> alert('Kategori başarıyla düzenlendi!')</script>");
            txtKategori.Text = " ";
            txtAdet.Text = " ";
        }
    }
}