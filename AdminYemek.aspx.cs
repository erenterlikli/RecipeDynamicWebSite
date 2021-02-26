using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class AdminYemek : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();
        string id = " ";
        string islem = " ";

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //yemek ekleme kısmı için kategorileri çekelim
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YemekId"];
                islem = Request.QueryString["islem"];

                SqlCommand komut2 = new SqlCommand("Select *from Kategoriler", baglan.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd"; //DropDownList'e kategorilerin adlarını text biçiminde oldukları için bu şekilde çektik.
                DropDownList1.DataValueField = "KategoriId"; //DropDownList'e kategorilerin id nolarını value değerinde oldukları için bu şekilde çektik.
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();


                SqlCommand komut = new SqlCommand("Select *from Yemek", baglan.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                DataList1.DataSource = oku;
                DataList1.DataBind();
            }

                //silme işlemi
                if (islem == "sil")
                {

                    SqlCommand komutsilme = new SqlCommand("Delete from Yemek where YemekId=@s1", baglan.baglanti());
                    komutsilme.Parameters.AddWithValue("@s1", id);
                    komutsilme.ExecuteNonQuery();
                    baglan.baglanti().Close();


                    SqlCommand kategorisil = new SqlCommand("Update Kategoriler set KategoriAdet=KategoriAdet-1 where KategoriId=@k1", baglan.baglanti());
                    kategorisil.Parameters.AddWithValue("@k1", DropDownList1.SelectedIndex);
                    kategorisil.ExecuteNonQuery();
                    baglan.baglanti().Close();

                    Response.Write("<script> alert('Yemek başarıyla silindi!')</script>");


                }

            }

            
        

     

        protected void Button1_Click1(object sender, EventArgs e)
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
            SqlCommand komut3 = new SqlCommand("insert into Yemek(YemekAd,YemekMalzeme,YemekTarif,KategoriId) Values(@x1,@x2,@x3,@x4)", baglan.baglanti());
            komut3.Parameters.AddWithValue("@x1", txtYemekAd.Text);
            komut3.Parameters.AddWithValue("@x2", txtMalzeme.Text);
            komut3.Parameters.AddWithValue("@x3", txtYapilis.Text);
            komut3.Parameters.AddWithValue("@x4", DropDownList1.SelectedValue);

            komut3.ExecuteNonQuery();
            baglan.baglanti().Close();

           

            //Kategori sayısını arttırma
            SqlCommand komutkategori = new SqlCommand("Update Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriId=@k1", baglan.baglanti());
            komutkategori.Parameters.AddWithValue("@k1", DropDownList1.SelectedValue);
            komutkategori.ExecuteNonQuery();
            baglan.baglanti().Close();

            Response.Write("<script> alert('Yemek başarıyla eklendi!')</script>");
            txtYemekAd.Text = " ";
            txtMalzeme.Text = " ";
            txtYapilis.Text = " ";
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}