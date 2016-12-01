using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class departmanduzenle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection("Data Source=GRUNDIG\\EKIMUC;Initial Catalog=TelefonRehberi;Integrated Security=True");
        baglanti.Open();
        SqlCommand yeniKayıt = new SqlCommand("insert into departmanlist(departmanadı) values ('" + TextBox1.Text.ToString() + "')", baglanti);
        yeniKayıt.ExecuteNonQuery();
        Label2.Text = "Departman Eklendi";
        baglanti.Close();
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

    }
}