using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();
        string kategoriid = " ";

        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["KategoriId"];
            SqlCommand komut = new SqlCommand("Select *from Yemek where KategoriId=@p1", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader oku = komut.ExecuteReader();
            DataList4.DataSource = oku;
            DataList4.DataBind();
        
        }
    }
}