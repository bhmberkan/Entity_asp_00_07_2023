using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;

namespace Entity_asp_1.Satis
{
    public partial class SatısSil : System.Web.UI.Page
    {
        ENTITYWEBEntities db = new ENTITYWEBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["SATISID"]);
            var sat = db.TBL_SATIS.Find(id);
            sat.DURUM = false;
            db.SaveChanges();
            Response.Redirect("Satislar.aspx");
        }
    }
}