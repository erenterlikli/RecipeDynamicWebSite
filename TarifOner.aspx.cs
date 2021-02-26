using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into TarifGelen(TarifAd,TarifMalzeme,TarifYapilis,TarifGonderen,TarifGonderenMail,TarifResmi) values(@t1,@t2,@t3,@t4,@t5,@t6)", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", txtTarifAd.Text);
            komut.Parameters.AddWithValue("@t2", txtMalzeme.Text);
            komut.Parameters.AddWithValue("@t3", txtYapilis.Text);
            komut.Parameters.AddWithValue("@t4", txtGonderen.Text);
            komut.Parameters.AddWithValue("@t5", txtMail.Text); ;
            komut.Parameters.AddWithValue("@t6", FileResim.FileName);



            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            Response.Write("<script> alert('Tarifiniz Alınmıştır. Teşekkür ederiz.')</script>");
            txtTarifAd.Text = " ";
            txtMalzeme.Text = " ";
            txtYapilis.Text = " ";
            txtGonderen.Text = " ";
            txtMail.Text = " ";
            FileResim.Dispose();
        }
    }
}