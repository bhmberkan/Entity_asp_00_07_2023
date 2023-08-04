using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;
namespace Entity_asp_1.Müsteri
{
    public partial class Müsteriler : System.Web.UI.Page
    {
        ENTITYWEBEntities db = new ENTITYWEBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler = db.TBL_MUSTERI.ToList();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_MUSTERI t = new TBL_MUSTERI();
            t.MUSTERIAD = TextBox1.Text;
            t.MUSTERISOYAD = TextBox2.Text;
            db.TBL_MUSTERI.Add(t);
            db.SaveChanges();
            Page.Response.Redirect(Page.Request.Url.ToString(), false); // sayfa yenileme kodu ekleme işlemi yaptıktan sonra
            // doğrudan listeler gelsin diye

        }
    }
}