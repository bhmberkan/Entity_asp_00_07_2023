using Entity_asp_1.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Entity_asp_1
{
    public partial class Kategoriler : System.Web.UI.Page
    {

        ENTITYWEBEntities db = new ENTITYWEBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler = db.TBL_KATEGORI.ToList();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();
        }
    }
}