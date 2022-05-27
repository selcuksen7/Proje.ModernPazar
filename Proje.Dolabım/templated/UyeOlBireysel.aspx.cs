using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Dolabım.templated_brushwood
{
    public partial class UyeOlBireysel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Proje.AnaSınıflar.KullaniciBilgi kullaniciBilgi = new AnaSınıflar.KullaniciBilgi();

            Label2.Text = kullaniciBilgi.Kontrol(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, DropDownList1.SelectedValue, TextBox5.Text, TextBox6.Text, "", "");
            if (Label2.Text == "bütün bilgiler girildi")
            {
                kullaniciBilgi.BilgiKayit(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, DropDownList1.SelectedValue, TextBox5.Text, TextBox6.Text);
                
                Response.Redirect("Default.aspx");
            }
        }

        
    }
}