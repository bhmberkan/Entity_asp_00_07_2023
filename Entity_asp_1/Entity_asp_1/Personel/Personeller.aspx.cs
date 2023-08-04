using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;

namespace Entity_asp_1.Personel
{
    public partial class Personeller : System.Web.UI.Page
    {
        ENTITYWEBEntities db = new ENTITYWEBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var pers = db.TBL_PERSONEL.Where(x=>x.DURUM==true).ToList();
            Repeater1.DataSource = pers;
            Repeater1.DataBind();

        }
    }
}