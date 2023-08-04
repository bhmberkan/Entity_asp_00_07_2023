<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Satislar.aspx.cs" Inherits="Entity_asp_1.Satis.Satislar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered">
        <tr>
            
            <th>SATIS ID</th>
            <th>ÜRÜN</th>
            <th>PERSONEL</th>
            <th>MÜSTERİ</th>
            <th>FİYAT</th>
            <th>SATIŞ İPTALİ</th>
            
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                  
                    <td><%#Eval("SATISID")%></td>
                    <td><%#Eval("URUNAD")%></td>
                    <td><%#Eval("PERSONELADSOYAD")%></td>
                    <td><%#Eval("MUSTERI")%></td>
                    <td><%#Eval("FIYAT")%></td>

                    <td><asp:HyperLink NavigateUrl='<%# "~/Satis/SatisSil.aspx?SATISID=" + Eval("SATISID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-danger">Satiş İptal Et</asp:HyperLink>
                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="../Satis/SatisEkle.aspx" class ="btn btn-info">Yeni Satış</a>

</asp:Content>
