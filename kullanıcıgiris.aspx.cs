using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class kullanıcıgiris : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Columns[2].Visible = false;
        GridView1.Columns[3].Visible = false;
        GridView1.Columns[4].Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
            

        if(e.CommandName=="Ayrıntı")
        {




            GridView1.Columns[2].Visible = true;
            GridView1.Columns[3].Visible = true;
            GridView1.Columns[4].Visible = true;






            int index = Convert.ToInt32(e.CommandArgument);
            TableRow secili_satir = GridView1.Rows[index];
            string Ad = secili_satir.Cells[0].Text;
            string Telefon = secili_satir.Cells[1].Text;
            string Soyad = secili_satir.Cells[2].Text;
            string Departman = secili_satir.Cells[3].Text;
            string YoneticiBilgileri = secili_satir.Cells[4].Text;
           
            



            Label1.Text =Ad ;
            Label2.Text = Soyad;
            Label3.Text = Telefon;
            Label4.Text = Departman;
            Label5.Text = YoneticiBilgileri;

           

        }
    }
}