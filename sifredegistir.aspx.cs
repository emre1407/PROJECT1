using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class sifredegistir : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == string.Empty || TextBox2.Text == string.Empty || TextBox3.Text == string.Empty)
        {
            Label1.Text = "Hatalı Giris Yaptınız";
        }
        else if(TextBox2.Text!=TextBox2.Text)
        {
            Label1.Text = "Sifreler Eslesmiyor";
        }
        else
        {
            SqlConnection baglanti = new SqlConnection("Data Source=GRUNDIG\\EKIMUC;Initial Catalog=TelefonRehberi;Integrated Security=True");
            baglanti.Open();
            SqlCommand yeniKayıt = new SqlCommand("insert into sifrelist(sifre) values ('" + TextBox2.Text.ToString() + "')", baglanti);
            yeniKayıt.ExecuteNonQuery();
            Label1.Text = "Sifreniz Basarıyla Degisti";
            baglanti.Close();
        }
    }
}