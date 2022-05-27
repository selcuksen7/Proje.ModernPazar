using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.AnaSınıflar;

namespace Proje.Dolabım.templated_brushwood
{
    public partial class UrunEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Proje.AnaSınıflar.UrunTuretilmis urunTuretilmis = new UrunTuretilmis();
            Label1.Text = urunTuretilmis.UrunBilgisiAl(DropDownList1.SelectedValue, DropDownList2.SelectedValue, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text);

        }
    }
}