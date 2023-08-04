using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;

namespace Entity_asp_1
{
    public partial class KategoriGüncelle : System.Web.UI.Page
    {
        ENTITYWEBEntities db = new ENTITYWEBEntities();

       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
                var ktgr = db.TBL_KATEGORI.Find(id);
                TxtID.Text = id.ToString();
                TxtAd.Text = ktgr.KATEGORIAD;
            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
            var ktgr = db.TBL_KATEGORI.Find(id);
            ktgr.KATEGORIAD = TxtAd.Text;
            db.SaveChanges();
            Response.Redirect("Kategoriler.aspx");
        }
    }
}