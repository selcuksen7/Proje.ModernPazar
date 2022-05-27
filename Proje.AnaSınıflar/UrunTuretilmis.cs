using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace Proje.AnaSınıflar
{
    public class UrunTuretilmis : AbsUrunBilgiKayit
    {
        
        public override string UrunBilgisiAl(string UrunKategori, string UrunBeden,  string UrunAdet, string UrunBrand, string UrunModel,string UrunFiyat)
        {

            Proje.Veritabani.DolabimWebEntity entity = new Veritabani.DolabimWebEntity();
            entity.Tbl_Urun.Add(new Veritabani.Tbl_Urun
            {

                UrunKategori = UrunKategori,
                UrunAdet = UrunAdet,
                UrunBeden = UrunBeden,
                UrunMarka = UrunBrand,
                UrunModel = UrunModel,
                UrunFiyat=UrunFiyat,
            }); entity.SaveChanges();


            return "Bilgiler Kaydedildi";
        }
    }

    
}
