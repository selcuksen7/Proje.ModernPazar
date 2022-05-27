using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.Linq;
using System.Security.Permissions;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace Proje.AnaSınıflar
{
    public class KullaniciBilgi : AbsKullanici
    {

        public override string Kontrol(string Email, string KullaniciAdi, string KullaniciSoyisim, string KullaniciTel, string Cinsiyet, string Adres, string Sifre,string VergiNo,string SirketAd)
        {
            Proje.Veritabani.DolabimWebEntity entity = new Veritabani.DolabimWebEntity();
            //Email kontrolü yaptım LINQ sorgusu ile iki farklı tablodaki email sorgularını yaptım.
            var sonuc = from d in entity.KullaniciBilgiK select d.Email;
            var sonuc2 = from d in entity.SirketBilgiK select d.Email;
            foreach (var item in sonuc)
            {
                if (item == Email) return "Email kullanılıyor lütfen bilgileri kontrol ediniz!";
                foreach (var item2 in sonuc2)
                {
                    if (item2 == Email) return "Email kullanılıyor lütfen bilgileri kontrol ediniz!";
                }
            }

            if (string.Empty == KullaniciAdi) return "lütfen İsminizi giriniz!!";
            if (string.Empty == KullaniciSoyisim) return "lütfen Soyisim  giriniz!!";
            if (11 != KullaniciTel.Length) return "lütfen 11 haneli Telefon numaranızı giriniz!!";
            if (string.Empty == Adres) return "lütfen Adres giriniz!!";
            if (8 <= Sifre.Length && Sifre.Length <= 20) return "bütün bilgiler girildi";
            else return "Şifreniz 8 ile 20 karaker arasında olmalı";
            
        }

        public void BilgiKayit(string Email, string KullaniciAdi, string KullaniciSoyisim, string KullaniciTel, string Cinsiyet, string Adres, string Sifre)
        {
            Proje.Veritabani.DolabimWebEntity entity = new Veritabani.DolabimWebEntity();
            entity.KullaniciBilgiK.Add(new Veritabani.KullaniciBilgiK
            {  
                Email=Email,
                İsim=KullaniciAdi,
                Soyisim=KullaniciSoyisim,
                TelefonNo=KullaniciTel,
                Cinsiyet=Cinsiyet,
                Adres=Adres,
                Sifre=Sifre,

            }) ;entity.SaveChanges();

        }
	

	

       

    }
}
