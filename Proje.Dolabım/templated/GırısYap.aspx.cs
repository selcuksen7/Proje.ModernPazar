using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Dolabım.templated
{
    public partial class GırısYap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Proje.AnaSınıflar.HesapGiris hesapGiris = new AnaSınıflar.HesapGiris();

            Label3.Text = hesapGiris.BilgiAl(TextBox15.Text, TextBox16.Text);
            if (Label3.Text == "0")
            {
                Response.Redirect("UrunSorgu.aspx");
            }
            else if (Label3.Text == "1")
            {
                Response.Redirect("UrunEkle.aspx");
            }
            else if (Label3.Text == "2")
            {
                Label3.Text = "Şifre Bilginiz Yanlış";
            }
            else if (Label3.Text == "3")
            {
                Label3.Text = "Email Bulunamadı!";
            }
        }
    }
}