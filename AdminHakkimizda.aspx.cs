using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class AdminHakkimizda : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = true;

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select *from Hakkimizda", baglan.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                while(oku.Read())
                {
                    TextBox1.Text = oku[0].ToString();
                }
                baglan.baglanti().Close();
            }
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
            


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("Update Hakkimizda set Metin=@p1", baglan.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();

            Response.Write("<script> alert('Hakkımızda kısmı başarıyla güncellendi!')</script>");
        }
    }
}