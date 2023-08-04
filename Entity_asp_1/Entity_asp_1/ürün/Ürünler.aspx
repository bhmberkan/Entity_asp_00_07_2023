<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Ürünler.aspx.cs" Inherits="Entity_asp_1.ürün.Ürünler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered">
        <tr>
            <%--<th>ÜRÜN ID</th>--%>
            <th>ÜRÜN ADI</th>
            <th>MARKA</th>
            <th>KATEGORİ</th>
            <th>FİYAT</th>
            <th>STOK</th>
            <th>İŞLEMLER</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <%--<td><%#Eval("URUNID") %></td>--%> <%--ÜRÜN ID NIN GORUNMEISNI İSTEMEDIM 1003 FALAN ATIYORDU--%>
                    <td><%#Eval("URUNAD") %></td>
                    <td><%#Eval("URUNMARKA") %></td>
                    <td><%#Eval("KATEGORIAD") %></td>
                    <td><%#Eval("URUNFIYAT") %></td>
                    <td><%#Eval("URUNSTOK") %></td>
                    <%--bir alt satırda urunıd'yı ürünsil adındakı sayfaya gönderiyoruz yani eval ediyoruz--%>
                    <td>
                        <asp:HyperLink NavigateUrl='<%# "~/ürün/ÜrünSil.aspx?URUNID=" + Eval("URUNID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                         &nbsp;  <%--tasarım düzgün görünsün diye yukarıda bir th açtım daha sorna buradaki iki işlemi ayni td içine alıp bir tane &nbsp;(boşluk bıraktım)--%>
                        <asp:HyperLink NavigateUrl='<%# "~/ürün/ÜrünGüncelle.aspx?URUNID=" + Eval("URUNID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>

                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
    <a href="ÜrünEkle.aspx" class="btn btn-info">Yeni Ürün</a>

</asp:Content>
