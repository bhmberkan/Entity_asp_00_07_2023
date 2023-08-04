<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Personeller.aspx.cs" Inherits="Entity_asp_1.Personel.Personeller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered">
        <tr>
            <th>PERSONEL</th>
            <th>GÜNCELLE &nbsp; &nbsp; &nbsp;
              SİL</th>
           
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <%--<td><%#Eval("PERSONELID")%></td>--%>
                    <td><%#Eval("PERSONELADSOYAD")%></td>
                    <td><asp:HyperLink NavigateUrl='<%# "~/Personel/PersonelGüncelle.aspx?PERSONELID=" + Eval("PERSONELID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                    &nbsp; &nbsp; &nbsp;<asp:HyperLink NavigateUrl='<%# "~/Personel/PersonelSil.aspx?PERSONELID=" + Eval("PERSONELID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink></td>
               
                    </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="../Personel/PersonelEkle.aspx" class="btn btn-info">Yeni Pesonel</a>
    

</asp:Content>
