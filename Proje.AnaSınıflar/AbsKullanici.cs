using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proje.AnaSınıflar
{
    public abstract class AbsKullanici
    {
        public string Email;
        public string KullaniciAdi;
        public string KullaniciSoyisim;
        public string KullaniciTel;
        public string Cinsiyet;
        public string Adres;
        public string Sifre;
        abstract public string Kontrol(string Email,string KullaniciAdi,string KullaniciSoyisim,string KullaniciTel,string Cinsiyet,string Adres, string Sifre,string VergiNo,string SirketAd);

    }
}
