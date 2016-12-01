using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "Admin")
        {

            SqlConnection baglanti = new SqlConnection("Data Source=GRUNDIG\\EKIMUC;Initial Catalog=TelefonRehberi;Integrated Security=True");
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select sifre from sifrelist", baglanti);

            SqlDataReader oku = komut.ExecuteReader();

            while (oku.Read())
            {
                if (TextBox2.Text == oku[0].ToString())
                {
                    Response.Redirect("admingiris.aspx");

                }
                else
                {
                    Label1.Text = "Kullanıcı Adı veya Şifre Yanlış ! ";

                }
            }
            baglanti.Close();

        }
        else
        {
            Label1.Text = "Kullanıcı Adı veya Şifre Yanlış ! ";
        }

    }
   
}