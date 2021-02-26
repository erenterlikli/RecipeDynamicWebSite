using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();
        string yemekid = " ";

        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["YemekId"];
            SqlCommand komut = new SqlCommand("Select YemekAd from Yemek where YemekId=@p1", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader oku = komut.ExecuteReader();
            while(oku.Read())
            {
                Label2.Text = oku[0].ToString();
                
            }
            baglan.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("Select *from Yorum where YemekId=@p2 and YorumOnay=@p3", baglan.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            komut2.Parameters.AddWithValue("@p3", "True");
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList3.DataSource = oku2;
            DataList3.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("insert into Yorum(YorumNick,YorumMail,YorumIcerik,YemekId) values(@a1,@a2,@a3,@a4)", baglan.baglanti());
            komut3.Parameters.AddWithValue("@a1", txtGonderen.Text);
            komut3.Parameters.AddWithValue("@a2", txtMail.Text);
            komut3.Parameters.AddWithValue("@a3", txtYorum.Text);
            komut3.Parameters.AddWithValue("@a4", yemekid);

            komut3.ExecuteNonQuery();
            baglan.baglanti().Close();

            Response.Write("<script> alert('Yorumunuz iletilmiştir. Admin onayından sonra uygun görüldüğü takdirde yayınlanacaktır.')</script>");
            txtYorum.Text = " ";
            txtGonderen.Text = " ";
            txtMail.Text = " ";
        }
    }
}