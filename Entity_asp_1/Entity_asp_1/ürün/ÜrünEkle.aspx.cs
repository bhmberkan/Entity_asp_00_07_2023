using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;

namespace Entity_asp_1.ürün
{
    public partial class ÜrünEkle : System.Web.UI.Page
    {
        ENTITYWEBEntities db = new ENTITYWEBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //DropDownList1.Items.Add("True");
            //DropDownList1.Items.Add("False");
            /*ilk başta durumu true ya da false olarak seçilsin istedim ancak daha sonra yeni eklediğimiz bir şeyi neden false
             yapıp görünmez halde ekleyelim ki diye düşündüm bu şekilde daha doğru oldu */

            if (!IsPostBack) /* burada ispostback atma sebebimiz dropdawnın her zaman sayfa açıldığındaki değeri almasını önlemek*/
            /*buraya ispostback atmasaydık hangi değeri seçersek seçelim 1 atıyordu veri tabanına */
            {
                var kate = (from x in db.TBL_KATEGORI select new { x.KATEGORIID, x.KATEGORIAD }).ToList(); // linq sorgusu
                DropDownKategori.DataTextField = "KATEGORIAD";
                DropDownKategori.DataValueField = "KATEGORIID";
                DropDownKategori.DataSource = kate;
                DropDownKategori.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            TBL_URUNLER t = new TBL_URUNLER();
            t.URUNAD = TxtUrunad.Text;
            t.URUNSTOK = short.Parse(TxtStok.Text);
            t.URUNMARKA = TxtMarka.Text;
            t.URUNFIYAT = decimal.Parse(TxtFiyat.Text);
            t.URUNKATEGORI = byte.Parse(DropDownKategori.SelectedValue);
            //t.DURUM = bool.Parse(DropDownList1.Text);
            t.DURUM = true;
            db.TBL_URUNLER.Add(t);
            db.SaveChanges();
            Response.Redirect("Ürünler.aspx");




        }
    }
}