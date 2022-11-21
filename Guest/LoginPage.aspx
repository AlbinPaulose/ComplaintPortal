<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="MiniProject_ComplaintRegisteration.Guest.LoginPage" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">


<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="login_css/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login_css/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/css/util.css">
	<link rel="stylesheet" type="text/css" href="login_css/css/main.css">
<!--===============================================================================================-->
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt style="margin:0 auto">
					<img src="login_css/images/img-01.png" alt="IMG">
				</div>

				<form class="login100-form validate-form">
					<span class="login100-form-title">
						Member Login
					</span>

					<div class="wrap-input100 validate-input" >
		
						<asp:TextBox ID="nameTextbox" runat="server" placeholder="Username" CssClass="input100"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						  <asp:TextBox ID="passwordTextbox" CssClass="input100" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>

						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<!--<button class="login100-form-btn">
							Login
						</button>-->
						<asp:Button class="login100-form-btn" ID="loginButton" runat="server" Text="Login" OnClick="loginButton_Click" />

					</div>

					

					<div  class="text-center p-t-12">
						<a class="txt2" href="RegisterationPage.aspx">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="login_css/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="login_css/vendor/bootstrap/js/popper.js"></script>
	<script src="login_css/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="login_css/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="login_css/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
    </script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>




    <!--<table aligin="center" style="text-align:center;margin:0 auto" class="auto-style1">
                    <tr>
                        <td style="text-align:center" colspan="2">Login</td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
        <tr></tr>
                    <tr>
                        <td>Password</td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="text-align:center" colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center" colspan="2">
                            <p class="login-pf-signup">Need an account?<a href="RegisterationPage.aspx">Sign up</a></p><br /><br />
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large"></asp:Label>
                            </td>
                    </tr>
                </table>-->
</asp:Content>
