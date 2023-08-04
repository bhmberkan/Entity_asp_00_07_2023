<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ÜrünEkle.aspx.cs" Inherits="Entity_asp_1.ürün.ÜrünEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">
        <div>
            <asp:TextBox ID="TxtUrunad" runat="server" placeholder="Urun Adını Girin..." class="form-control"></asp:TextBox>    
        </div>
        <br />
        <div>
            <asp:TextBox ID="TxtMarka" runat="server" placeholder="Marka Girin..." class="form-control"></asp:TextBox>    
        </div>
        <br />
        <div>
            <asp:DropDownList ID="DropDownKategori" runat="server" CssClass="form-control"></asp:DropDownList>
            <%--<asp:TextBox ID="TxtKategori" runat="server" placeholder="Kategori Girin...(SAYI OLMALIDIR!)" class="form-control"></asp:TextBox>--%>    
        </div>
        <br />
        
        <div>
            <asp:TextBox ID="TxtFiyat" runat="server" placeholder="Fiyat Girin..." class="form-control"></asp:TextBox>    
        </div>
        <br />
        <div>
            <asp:TextBox ID="TxtStok" runat="server" placeholder="Stok Adedi Girin..." class="form-control"></asp:TextBox>    
        </div>
        <br />
       <%-- <div>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
         
        </div>
        <br />--%>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Ürün Ekle" CssClass="btn btn-primary" OnClick="Button1_Click"  />
        </div>
        <br />
    </form>
</asp:Content>
