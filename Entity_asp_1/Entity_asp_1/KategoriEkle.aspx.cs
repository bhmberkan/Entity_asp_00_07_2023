using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;

namespace Entity_asp_1
{
    public partial class KategoriEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ENTITYWEBEntities db = new ENTITYWEBEntities(); //tabloya ulaşmak için kullandık
            TBL_KATEGORI t = new TBL_KATEGORI();
            t.KATEGORIAD = TextBox1.Text; /*textbox1 den gelden deperleri t değişkenine aktardık tabi ki bunu da 
                                           veri tabanındaki kategoriad kısmına bağladık */
            db.TBL_KATEGORI.Add(t); /* t den gelen değerleri kategoriler tablosuna kaydettik */
            db.SaveChanges();/* executenonquery nin karşılığı */
            Response.Redirect("Kategoriler.aspx");

        }
    }
}