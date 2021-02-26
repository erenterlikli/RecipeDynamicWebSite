using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class AdminYemekGuncelle : System.Web.UI.Page
    {
        
        string id = " ";
        SqlBaglantisi baglan = new SqlBaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekId"];
            if(Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("Select *from Yemek where YemekId=@p1", baglan.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while(oku.Read())
                {
                    txtGuncelYemekAd.Text = oku[1].ToString();
                    txtGuncelMalzeme.Text = oku[2].ToString();
                    txtGuncelTarif.Text = oku[3].ToString();

                }
                baglan.baglanti().Close();

                if(Page.IsPostBack==false)
                {
                    SqlCommand komut2 = new SqlCommand("Select *from Kategoriler", baglan.baglanti());
                    SqlDataReader oku2 = komut2.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "KategoriId";
                    DropDownList1.DataSource = oku2;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void BtnGuncelleOnay_Click(object sender, EventArgs e)
        {
            FileGuncelResim.SaveAs(Server.MapPath("/Resimler/" + FileGuncelResim.FileName)); //resmin kaydedilecek yeri ve ismi belirleme.


            SqlCommand komutsil = new SqlCommand("Update Yemek set YemekAd=@a1, YemekMalzeme=@a2, YemekTarif=@a3, KategoriId=@a4, YemekResim=@a6 where YemekId=@a5", baglan.baglanti());
            komutsil.Parameters.AddWithValue("@a1", txtGuncelYemekAd.Text);
            komutsil.Parameters.AddWithValue("@a2", txtGuncelMalzeme.Text);
            komutsil.Parameters.AddWithValue("@a3", txtGuncelTarif.Text);
            komutsil.Parameters.AddWithValue("@a4", DropDownList1.SelectedValue);
            komutsil.Parameters.AddWithValue("@a5", id);
            komutsil.Parameters.AddWithValue("@a6", "~/Resimler/" + FileGuncelResim.FileName);
            komutsil.ExecuteNonQuery();
            baglan.baglanti().Close();

            Response.Write("<script> alert('Yemek başarıyla güncellendi!')</script>");
        }

        protected void BtnYap_Click(object sender, EventArgs e)
        {
            //bütün değerli false yap.
            SqlCommand komutsifirla = new SqlCommand("Update Yemek set YemekDurum=0", baglan.baglanti());
            komutsifirla.ExecuteNonQuery();
            baglan.baglanti().Close();

            //seçilen yemeği günün yemeği yap
            SqlCommand komutgununyemegi = new SqlCommand("Update Yemek set YemekDurum=1 where YemekId=@y1", baglan.baglanti());
            komutgununyemegi.Parameters.AddWithValue("@y1", id);
            komutgununyemegi.ExecuteNonQuery();
            baglan.baglanti().Close();

            Response.Write("<script> alert('Yemek günün yemeği olarak seçildi!')</script>");
           
        }
    }
}