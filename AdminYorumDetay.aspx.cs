using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class AdminYorumDetay : System.Web.UI.Page
    {
        string id = " ";
        SqlBaglantisi baglan = new SqlBaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumId"];

            if (Page.IsPostBack == false)
            {
                
                SqlCommand komut = new SqlCommand("Select YorumNick,YorumMail,YorumIcerik,YemekAd from Yorum inner join Yemek on Yorum.YemekId=Yemek.YemekId where YorumId=@a1", baglan.baglanti());
                komut.Parameters.AddWithValue("@a1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TxtNick.Text = oku[0].ToString();
                    TxtMail.Text = oku[1].ToString();
                    TxtYorum.Text = oku[2].ToString();
                    TxtYemek.Text = oku[3].ToString();
                }
                baglan.baglanti().Close();
            }
        }

        protected void BtnGuncelOnay_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                SqlCommand komut2 = new SqlCommand("Update Yorum set YorumIcerik=@y1, YorumOnay=@y2 where YorumId=@y3", baglan.baglanti());
                komut2.Parameters.AddWithValue("@y1", TxtYorum.Text);
                komut2.Parameters.AddWithValue("@y2", "True");
                komut2.Parameters.AddWithValue("@y3", id);

                komut2.ExecuteNonQuery();
                baglan.baglanti().Close();

                Response.Write("<script> alert('Yorum başarıyla düzenlendi!')</script>");
                
                

            }
        }
    }
}