<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Entity_asp_1.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Giriş</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/Login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Login/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/Login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Login/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/Login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Login/css/util.css">
	<link rel="stylesheet" type="text/css" href="/Login/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	
	<div class="container-login100" style="background-image: url('/Login/images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form class="login100-form validate-form" runat="server">
				<span class="login100-form-title p-b-37">
					Admin Giriş Paneli
				</span>

				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter username or email">
				  <asp:TextBox ID="TxtKullaniciAd" runat="server" CssClass="input100" placeholder="Kullanıcı Adınız"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" data-validate = "Enter password">
                    <asp:TextBox ID="TxtSifre" runat="server" CssClass="input100" placeholder="Şifreniz"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
                    <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="login100-form-btn" OnClick="Button1_Click"  />
				</div>

				<div class="text-center p-t-57 p-b-20">
					<span class="txt1">
						Veya
					</span>
				</div>

				<div class="flex-c p-b-112">
					<a href="#" class="login100-social-item">
						<i class="fa fa-facebook-f"></i>
					</a>

					<a href="#" class="login100-social-item">
						<img src="/Login/images/icons/icon-google.png" alt="GOOGLE">
					</a>
				</div>
			</form>

			
		</div>
	</div>

<!--===============================================================================================-->
	<script src="/Login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/Login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/Login/vendor/bootstrap/js/popper.js"></script>
	<script src="/Login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/Login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/Login/vendor/daterangepicker/moment.min.js"></script>
	<script src="/Login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/Login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="/Login/js/main.js"></script>

</body>
</html>