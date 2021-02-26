﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class AdminOneri : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {

                //Onaylanmamış yemekleri listeleme
                SqlCommand komut = new SqlCommand("Select *from TarifGelen where TarifOnay=0", baglan.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                DataList1.DataSource = oku;
                DataList1.DataBind();

                //Onaylanmış yemekleri listeleme
                SqlCommand komut2 = new SqlCommand("Select *from TarifGelen where TarifOnay=1", baglan.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();
                DataList2.DataSource = oku2;
                DataList2.DataBind();

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
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}