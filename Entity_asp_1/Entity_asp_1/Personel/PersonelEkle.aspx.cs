using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;

namespace Entity_asp_1.Personel
{
    public partial class PersonelEkle : System.Web.UI.Page
    {
        ENTITYWEBEntities db = new ENTITYWEBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_PERSONEL t = new TBL_PERSONEL();
            t.PERSONELADSOYAD = TextBox1.Text;
             db.TBL_PERSONEL.Add(t);
            db.SaveChanges();
            Response.Redirect("Personeller.aspx");

        }
    }
}