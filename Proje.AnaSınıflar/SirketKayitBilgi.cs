using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proje.AnaSınıflar
{
    public class SirketKayitBilgi : AbsKullanici
    {

        public override string Kontrol(string Email, string KullaniciAdi, string KullaniciSoyisim, string KullaniciTel, string Cinsiyet, string Adres, string SirketAd, string VergiNo, string Sifre)
        {
            Proje.Veritabani.DolabimWebEntity entity = new Veritabani.DolabimWebEntity();
            //Email kontrolü yaptım LINQ sorgusu ile
            var sonuc = from d in entity.KullaniciBilgiK select d.Email;
            var sonuc2 = from d in entity.SirketBilgiK select d.Email;
            foreach (var item in sonuc)
            {
                if (item == Email)
                {
                    return "Email kullanılıyor lütfen bilgileri kontrol ediniz!";

                }
                foreach (var item2 in sonuc2)
                {
                    if (item2 == Email) return "Email kullanılıyor lütfen bilgileri kontrol ediniz!";
                }
            }
            if (string.Empty == SirketAd) return "lütfen Şirket Adınızı giriniz!!";
            if (10 != VergiNo.Length) return "Lütfen 10 haneli Vergi Numaranızı giriniz!!";
            if (string.Empty == KullaniciAdi) return "lütfen İsminizi giriniz!!";
            if (string.Empty == KullaniciSoyisim) return "lütfen Soyisim  giriniz!!";
            if (11 != KullaniciTel.Length) return "lütfen 11 haneli Telefon numaranızı giriniz!!";
            if (string.Empty == Adres) return "lütfen Adres giriniz!!";

            if (8 <= Sifre.Length && Sifre.Length <= 20) return "bütün bilgiler girildi";
            else return "Şifreniz 8 ile 20 karaker arasında olmalı";
        }

        public void BilgiKayit2(string Email, string KullaniciAdi, string KullaniciSoyisim, string KullaniciTel, string Cinsiyet, string Adres, string SirketAd, string VergiNo, string Sifre)
        {
            Proje.Veritabani.DolabimWebEntity entity = new Veritabani.DolabimWebEntity();

            entity.SirketBilgiK.Add(new Veritabani.SirketBilgiK
            {
                Email = Email,
                İsim = KullaniciAdi,
                Soyisim = KullaniciSoyisim,
                TelefonNo = KullaniciTel,
                Adres = Adres,
                SirketAd = SirketAd,
                VergiNo = VergiNo,
                Sifre = Sifre,

            }); entity.SaveChanges();

        }

    }
}
