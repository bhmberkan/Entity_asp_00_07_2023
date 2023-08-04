<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriGüncelle.aspx.cs" Inherits="Entity_asp_1.KategoriGüncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <div>
            <asp:TextBox ID="TxtID" runat="server"  Enabled="false" class="form-control" Height="34px" Width="1140px" ></asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="TxtAd" runat="server" placeholder="Kategori Adını Girin..." class="form-control"></asp:TextBox>
        </div>
        <br />

        <div>
            <asp:Button ID="Button1" runat="server" Text="Kategori Güncelle" CssClass="btn btn-success" OnClick="Button1_Click" />
        </div>
        <br />
    </form>

</asp:Content>
