using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class AnaSayfa1 : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select *from Yemek", baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList4.DataSource = oku;
            DataList4.DataBind();
        }
    }
}