<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="İstatistik.aspx.cs" Inherits="Entity_asp_1.LinqKartlar.İstatistik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <!DOCTYPE html>
<html lang="zxx">
<head>
    <title></title>
    <!-- custom-theme -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
               function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //custom-theme -->
    <link href="/web3/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/web3/css/component.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/web3/css/export.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/web3/css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/web3/css/style.css" rel="stylesheet" type="text/css" media="all" />

    <!-- font-awesome-icons -->
    <link href="/web3/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>
<body>
    <!-- banner -->
    <div class="clearfix"></div>

    <ul class="ca-menu">
        <li>
            <a href="#">
                <i class="fa fa-pie-chart" aria-hidden="true"></i>
                <div class="ca-content">
                    <h4 class="ca-main">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h4>
                    <h3 class="ca-sub">Ürün Sayımız</h3>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-user" aria-hidden="true"></i>
                <div class="ca-content">
                    <h4 class="ca-main one">  <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h4>
                    <h3 class="ca-sub one">Müşteri Sayımız</h3>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-money" aria-hidden="true"></i>
                <div class="ca-content">
                    <h4 class="ca-main two">  <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h4>
                    <h3 class="ca-sub two">Kasadaki Tutar</h3>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-apple" aria-hidden="true"></i>
                <div class="ca-content">
                    <h4 class="ca-main three">  <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h4>
                    <h3 class="ca-sub three">Kategori Sayımız</h3>
                </div>
            </a>
        </li>

    </ul>

    <ul class="ca-menu">
        <li>
            <a href="#">
                <i class="fa fa-list" aria-hidden="true"></i>
                <div class="ca-content">
                    <h4 class="ca-main">  <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h4>
                    <h3 class="ca-sub">Aktif Ürün Sayısı</h3>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-language" aria-hidden="true"></i>
                <div class="ca-content">
                    <h4 class="ca-main one">  <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></h4>
                    <h3 class="ca-sub one">Pasif Ürün Sayısı</h3>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-database" aria-hidden="true"></i>
                <div class="ca-content">
                    <h4 class="ca-main two">  <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></h4>
                    <h3 class="ca-sub two">En Fazla Stoklu Ürün</h3>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-sticky-note" aria-hidden="true"></i>
                <div class="ca-content">
           
                    <h4 class="ca-main three">  <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></h4>     
                    
                    <h3 class="ca-sub three">En Fazla Ürüne Sahip Kategori</h3>
                </div>
            </a>
        </li>
    </ul>
</body>
</html>

</asp:Content>
