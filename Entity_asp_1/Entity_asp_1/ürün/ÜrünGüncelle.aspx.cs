using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;

namespace Entity_asp_1.ürün
{
    public partial class ÜrünGüncelle : System.Web.UI.Page
    {
        ENTITYWEBEntities db = new ENTITYWEBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var kate = (from x in db.TBL_KATEGORI select new { x.KATEGORIID, x.KATEGORIAD }).ToList();
                DropDownKategori.DataTextField = "KATEGORIAD";
                DropDownKategori.DataValueField = "KATEGORIID";
                DropDownKategori.DataSource = kate;
                DropDownKategori.DataBind();
                /*dropdawn list içerisine katofir adlarını çektik ama veri tabanında katgori ıd olarak aktaracak*/




                int id = Convert.ToInt32(Request.QueryString["URUNID"]);
                var urun = db.TBL_URUNLER.Find(id);
                TxtUrunad.Text = urun.URUNAD;
                TxtStok.Text = urun.URUNSTOK.ToString();
                TxtMarka.Text = urun.URUNMARKA.ToString();
                TxtFiyat.Text = urun.URUNFIYAT.ToString();
                DropDownKategori.SelectedValue = urun.URUNKATEGORI.ToString();


            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["URUNID"]);
            var deg = db.TBL_URUNLER.Find(id);
            deg.URUNAD = TxtUrunad.Text;
            deg.URUNSTOK =short.Parse(TxtStok.Text);
            deg.URUNMARKA = TxtMarka.Text;
            deg.URUNFIYAT =decimal.Parse(TxtFiyat.Text);
            deg.URUNKATEGORI = byte.Parse(DropDownKategori.SelectedValue.ToString());
            db.SaveChanges();
            Response.Redirect("ürünler.aspx");
        }
    }
}