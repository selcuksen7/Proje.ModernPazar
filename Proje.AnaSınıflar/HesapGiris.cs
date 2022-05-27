using Proje.Veritabani;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proje.AnaSınıflar
{
    public class HesapGiris
    {
        public string BilgiAl(string Email, string Sifre)
        {
            Proje.Veritabani.DolabimWebEntity sirketBilgi = new Veritabani.DolabimWebEntity();
            Proje.Veritabani.DolabimWebEntity kullaniciBilgi = new Veritabani.DolabimWebEntity();
            //Girilen bilgilerin eşleşmesi sonucunda geriye bilgi göndererek sisteme giriş izni veriyorum.
            var Bilgiler = from b in sirketBilgi.SirketBilgiK select b.Email;
            var Bilgiler2 = from b in kullaniciBilgi.KullaniciBilgiK select b.Email;
            foreach (var item in Bilgiler)
            {
                if (item == Email)
                {

                    var SifreBilgiGetir = sirketBilgi.SirketBilgiK.Single(p => p.Email == Email);
                    if (Sifre == SifreBilgiGetir.Sifre)
                    {
                        return "1";
                    }
                    else return "2";

                }

            }
            foreach (var item2 in Bilgiler2)
            {
                if (item2 == Email)
                {

                    var SifreBilgiGetir2 = sirketBilgi.KullaniciBilgiK.Single(p => p.Email == Email);
                    if (Sifre == SifreBilgiGetir2.Sifre)
                    {
                        return "0";
                    }
                    else return "2";

                }
            }return "3";

        }  
    }
}
