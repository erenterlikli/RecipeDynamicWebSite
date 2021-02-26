using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class AdminMesajDetay : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();
        string id = " ";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajId"];

            SqlCommand komut = new SqlCommand("Select *from Mesaj where MesajId=@m1", baglan.baglanti());
            komut.Parameters.AddWithValue("@m1", id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TxtGonderen.Text = oku[1].ToString();
                TxtBaslik.Text = oku[2].ToString();
                TxtGonderenMail.Text = oku[3].ToString();
                TxtMesaj.Text = oku[4].ToString();
            }
            baglan.baglanti().Close();
        }
    }
}