using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity_asp_1.Entity;

namespace Entity_asp_1.Satis
{
    public partial class SatisEkle : System.Web.UI.Page
    {
        ENTITYWEBEntities db = new ENTITYWEBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                {
                    var urun = (from x in db.TBL_URUNLER select new { x.URUNID, x.URUNAD }).ToList(); // linq sorgusu
                    DropDownList1.DataTextField = "URUNAD";
                    DropDownList1.DataValueField = "URUNID";
                    DropDownList1.DataSource = urun;
                    DropDownList1.DataBind();


                    var mus = (from x in db.TBL_MUSTERI
                               select new
                               {
                                   x.MUSTERIID,
                                   ADSOYAD = x.MUSTERIAD +" "+ x.MUSTERISOYAD


                               }).ToList(); // linq sorgusu
                    DropDownList2.DataTextField = "ADSOYAD";
                    DropDownList2.DataValueField = "MUSTERIID";
                    DropDownList2.DataSource = mus;
                    DropDownList2.DataBind();

                    var per = (from x in db.TBL_PERSONEL select new { x.PERSONELID, x.PERSONELADSOYAD }).ToList(); // linq sorgusu
                    DropDownList3.DataTextField = "PERSONELADSOYAD";
                    DropDownList3.DataValueField = "PERSONELID";
                    DropDownList3.DataSource = per;
                    DropDownList3.DataBind();

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            TBL_SATIS t = new TBL_SATIS();
            t.MUSTERI = int.Parse(DropDownList2.SelectedValue);
            t.URUN = int.Parse(DropDownList1.SelectedValue);
            t.PERSONEL = byte.Parse(DropDownList3.SelectedValue);
            t.FIYAT = decimal.Parse(TxtFiyat.Text);
            t.DURUM = true;
            db.TBL_SATIS.Add(t);
            db.SaveChanges();
            Response.Redirect("Satislar.aspx");
        }
    }
}