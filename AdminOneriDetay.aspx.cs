using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class AdminOneriDetay : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();
        string id = " ";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select *from TarifGelen where TarifId=@p1", baglan.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    txtGelenTarifAd.Text = oku[1].ToString();
                    txtGelenMalzeme.Text = oku[2].ToString();
                    txtGelenYapilis.Text = oku[3].ToString();
                    txtGelenKisi.Text = oku[4].ToString();
                    txtGonderenMail.Text = oku[5].ToString();
                    
                }
                baglan.baglanti().Close();

                //Kategorileri DropDownList'e çekme
                SqlCommand komut2 = new SqlCommand("Select *from Kategoriler", baglan.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }
        }

        protected void BtnGuncelleOnay_Click(object sender, EventArgs e)
        {
          
                //Tarifi Onayla, güncellemeyi tamamlamış olalım.
                SqlCommand komutonay = new SqlCommand("Update TarifGelen set TarifOnay=1 where TarifId=@t1", baglan.baglanti());
                komutonay.Parameters.AddWithValue("@t1", id);
                komutonay.ExecuteNonQuery();
                baglan.baglanti().Close();


                //Ana sayfaya tarifi ekleme.
                SqlCommand komutekle = new SqlCommand("insert into Yemek(YemekAd,YemekMalzeme,YemekTarif,KategoriId,YemekResim) values(@y1,@y2,@y3,@y4,@y5)", baglan.baglanti());
                komutekle.Parameters.AddWithValue("@y1", txtGelenTarifAd.Text);
                komutekle.Parameters.AddWithValue("@y2", txtGelenMalzeme.Text);
                komutekle.Parameters.AddWithValue("@y3", txtGelenYapilis.Text);
                komutekle.Parameters.AddWithValue("@y4", DropDownList1.SelectedValue);
                komutekle.Parameters.AddWithValue("@y5", FileGelenResim.FileName);

                komutekle.ExecuteNonQuery();
                baglan.baglanti().Close();

                Response.Write("<script> alert('Önerilen yemek başarıyla düzenlendi, ana sayfaya eklendi!')</script>");
        }
    }
}