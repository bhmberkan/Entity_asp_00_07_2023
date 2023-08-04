<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="PersonelEkle.aspx.cs" Inherits="Entity_asp_1.Personel.PersonelEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form runat="server" class="form-group">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Personel Adını Girin..." class="form-control"></asp:TextBox>    
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Pesonel Ekle" CssClass="btn btn-primary" OnClick="Button1_Click"  />
        </div>
        <br />
    </form>

</asp:Content>
