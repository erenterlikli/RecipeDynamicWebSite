using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public class SqlBaglantisi
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=EREN\\SQLEXPRESS;Initial Catalog=YemekSitesi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}