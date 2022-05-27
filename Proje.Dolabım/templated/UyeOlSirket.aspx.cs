using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Dolabım.templated_brushwood
{
    public partial class UyeOlSirket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Proje.AnaSınıflar.SirketKayitBilgi sirket = new AnaSınıflar.SirketKayitBilgi();
            Label2.Text = sirket.Kontrol(TextBox7.Text, TextBox8.Text, TextBox9.Text, TextBox10.Text, "", TextBox11.Text, TextBox12.Text, TextBox13.Text, TextBox14.Text);
            if (Label2.Text == "bütün bilgiler girildi")
            {
                sirket.BilgiKayit2(TextBox7.Text, TextBox8.Text, TextBox9.Text, TextBox10.Text, "", TextBox11.Text, TextBox12.Text, TextBox13.Text, TextBox14.Text);
                Response.Redirect("Default.aspx");
            }
        }
    }
}