using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;

namespace Entity_asp_1.ürün
{
    public partial class ÜrünSil : System.Web.UI.Page
    {
        ENTITYWEBEntities db = new ENTITYWEBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["URUNID"]);
            var urun = db.TBL_URUNLER.Find(id);
            urun.DURUM = false;
            db.SaveChanges();
            Response.Redirect("Ürünler.aspx");



        }
    }
}