using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admingiris : System.Web.UI.Page
{
    private void temizle(Control control)
    {
        var textbox = control as TextBox;
        if (textbox != null)
            textbox.Text = string.Empty;
        
        var checkBox = control as CheckBox;
        if (checkBox != null)
            checkBox.Checked = false;

        foreach (Control kkontrol in control.Controls)
        {
            temizle(kkontrol);
        }
    }
    
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (TextBox1.Text == string.Empty || TextBox2.Text == string.Empty || TextBox3.Text == string.Empty)
        {
            Label6.Text = "Ad , Soyad veya Telefondan biri bos bırakılamaz.";
        }
        else
        {

            SqlConnection baglanti = new SqlConnection("Data Source=GRUNDIG\\EKIMUC;Initial Catalog=TelefonRehberi;Integrated Security=True");
            baglanti.Open();
            SqlCommand yeniKayıt = new SqlCommand("insert into rehber(Ad,Soyad,Telefon,Departman,YoneticiBilgileri) values ('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + DropDownList2.Text.ToString() + "')", baglanti);
            yeniKayıt.ExecuteNonQuery();
            Label6.Text = "Kayıt Başarıyla Eklendi";
            baglanti.Close();
            

        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("sifredegistir.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
    protected void Button4_Click(object sender, EventArgs e)
    {
        


    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        temizle(this);
    }
    
    protected void Button5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("sifredegistir.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("departmanduzenle.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("duzenlesil.aspx");
    }
}