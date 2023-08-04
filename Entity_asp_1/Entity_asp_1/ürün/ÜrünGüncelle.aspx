<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ÜrünGüncelle.aspx.cs" Inherits="Entity_asp_1.ürün.ÜrünGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">
        <div>
            <asp:Label ID="Label1" runat="server" Text="ÜRÜN ADI" Font-Bold="true"></asp:Label> <br />
            <asp:TextBox ID="TxtUrunad" runat="server" placeholder="Urun Adını Girin..." class="form-control"></asp:TextBox>    
        </div>
        <br />
        <div>
             <asp:Label ID="Label2" runat="server" Text="MARKA " Font-Bold="true"></asp:Label> <br />
            <asp:TextBox ID="TxtMarka" runat="server" placeholder="Marka Girin..." class="form-control"></asp:TextBox>    
        </div>
        <br />
        <div>
             <asp:Label ID="Label3" runat="server" Text="KATEGORİ SEÇ" Font-Bold="true"></asp:Label> <br />
            <asp:DropDownList ID="DropDownKategori" runat="server" CssClass="form-control"></asp:DropDownList>
           
        </div>
        <br />
        
        <div>
             <asp:Label ID="Label4" runat="server" Text="FİYAT " Font-Bold="true"></asp:Label> <br />
            <asp:TextBox ID="TxtFiyat" runat="server" placeholder="Fiyat Girin..." class="form-control"></asp:TextBox>    
        </div>
        <br />
        <div>
             <asp:Label ID="Label5" runat="server" Text="STOK SAYISI " Font-Bold="true"></asp:Label> <br />
            <asp:TextBox ID="TxtStok" runat="server" placeholder="Stok Adedi Girin..." class="form-control"></asp:TextBox>    
        </div>
        <br />
        
        <div>
            <asp:Button ID="Button1" runat="server" Text="Ürün Güncele" CssClass="btn btn-warning" OnClick="Button1_Click"   />
        </div>
        <br />
    </form>
</asp:Content>
