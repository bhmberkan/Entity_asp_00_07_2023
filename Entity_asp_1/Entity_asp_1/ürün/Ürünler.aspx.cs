using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;

namespace Entity_asp_1.ürün
{
    public partial class Ürünler : System.Web.UI.Page
    {
        ENTITYWEBEntities db = new ENTITYWEBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            // var degerler = db.TBL_URUNLER.Where(x=>x.DURUM==true).ToList();/*linq sorgusu ile sadece durumu true olanı getırıyor*/
            var urunler = (from x in db.TBL_URUNLER
                           where x.DURUM == true  // yukarıdaki where sorgusunun aynısı
                           select new
                           {
                               x.URUNID,
                               x.URUNAD,
                               x.URUNMARKA,
                               x.TBL_KATEGORI.KATEGORIAD, // burada bu şekilde yazmamız kategoriler tablosuna doğrudan adlarını getirmek numara yerine
                               x.URUNFIYAT,
                               x.URUNSTOK
                           }).ToList();  /* linq'nun farkli bir kullanımı bu kullanımda istediğimiz kısımları getirtebiliyoruz */
            Repeater1.DataSource = urunler;
            Repeater1.DataBind();
        }
    }
}