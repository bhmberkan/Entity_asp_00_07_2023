using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;

namespace Entity_asp_1
{
    public partial class KategoriSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ENTITYWEBEntities db = new ENTITYWEBEntities();
            int x = Convert.ToInt32(Request.QueryString["KATEGORIID"]); /*kategoriıd yi x değişkenine attık*/
            var parametre = db.TBL_KATEGORI.Find(x); /*kategori ıd yi parametre olarak aldık find(bulma ya da listeleme yaptı)*/
            db.TBL_KATEGORI.Remove(parametre); /*remove metodu ile sildik*/
            db.SaveChanges();
            Response.Redirect("Kategoriler.aspx");

        }
    }
}