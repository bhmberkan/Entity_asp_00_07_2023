using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;

namespace Entity_asp_1.LinqKartlar
{
    public partial class İstatistik : System.Web.UI.Page
    {
        ENTITYWEBEntities db = new ENTITYWEBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = db.TBL_URUNLER.Count().ToString();
            Label2.Text = db.TBL_MUSTERI.Count().ToString();
            Label3.Text = db.TBL_SATIS.Sum(x=>x.FIYAT).ToString();//fiyatları topladık kasadaki parayı bulduk
            Label4.Text = db.TBL_KATEGORI.Count().ToString();
            Label5.Text = db.TBL_URUNLER.Count(x=>x.DURUM==true).ToString();
            Label6.Text = db.TBL_URUNLER.Count(x=>x.DURUM==false).ToString();
            Label7.Text = (from x in db.TBL_URUNLER orderby x.URUNSTOK descending select x.URUNAD).FirstOrDefault();
            // descending z den a ya doğru sırala
            //FirstOrDefault bu sıraladıkların içinde en üstte olanı ver

            var enfkat = (from x in db.TBL_URUNLER
                          join x2 in db.TBL_KATEGORI
                          on x.URUNKATEGORI equals x2.KATEGORIID
                          group x by x2 into g
                          orderby g.Count() descending
                          select g.Key.KATEGORIAD).FirstOrDefault();
            Label8.Text = enfkat;
            /*yukarıdaki linq sorgusunda urunler tablosu ile kategori tablosunu birleştirdik
             bunu da x ler aracılığı ile  urunlerdeki urunkategorıyı kategoriıd ye eşitledik
             equals komutu eşitleme anlamındadır. daha sonra bunları grupladık ve g adında bir
            değişken oluşturup toplam sayısınına gore sıraladık descending komutu 
            daha sonra FirsOrDefault ile sıralamadan en üstte olanı çektik bu da bize kategori
            sayısı en fazla olan değeri verdi  bunuda labele aktardık
            */
            
        }
    }
}