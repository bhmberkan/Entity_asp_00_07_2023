using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;

namespace Entity_asp_1.Satis
{
    public partial class Satislar : System.Web.UI.Page
    {
        ENTITYWEBEntities db = new ENTITYWEBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            // var satis = db.TBL_SATIS.ToList();
            var satis = (from x in db.TBL_SATIS where x.DURUM==true
                        select new
                        {
                            x.SATISID,
                            x.TBL_URUNLER.URUNAD,
                            x.TBL_PERSONEL.PERSONELADSOYAD,
                            x.TBL_MUSTERI.MUSTERIAD,
                            MUSTERI =x.TBL_MUSTERI.MUSTERIAD +" "+ x.TBL_MUSTERI.MUSTERISOYAD,                                 // iki farklı tablodan çektık bu yuzden anoyms tanımlamamızı ıstedı
                                                                                                                              // o yüzden burada musteri= dedik a b c = te diyebilirdik
                            x.FIYAT
                        }).ToList();
            Repeater1.DataSource = satis;
            Repeater1.DataBind();

        }
    }
}