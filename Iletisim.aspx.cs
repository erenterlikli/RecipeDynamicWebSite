using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class Iletisim : System.Web.UI.Page
    {

        SqlBaglantisi baglan = new SqlBaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnMesajGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Mesaj(MesajBaslik,MesajGonderen,MesajMail,MesajIcerik) values(@p1,@p2,@p3,@p4)", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", txtBaslik.Text);
            komut.Parameters.AddWithValue("@p2", txtGonderen.Text);
            komut.Parameters.AddWithValue("@p3", txtEMail.Text);
            komut.Parameters.AddWithValue("@p4", txtMesaj.Text);

            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            Response.Write("<script> alert('Mesajınız tarafımıza iletilmiştir. En kısa zamanda size dönüş yapılacaktır.')</script>");
            txtBaslik.Text = " ";
            txtEMail.Text = " ";
            txtGonderen.Text = " ";
            txtMesaj.Text = " ";
        }
    }
}