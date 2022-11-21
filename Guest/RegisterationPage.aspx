<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="RegisterationPage.aspx.cs" Inherits="MiniProject_ComplaintRegisteration.Guest.RegisterationPage" EnableEventValidation="false" %>
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
						Registeration
					</span>

		        <div>
                    <br /><br />
                </div>
        <div class="center" style="width:800px; height:400px; margin:0px auto 0px auto;" >
            <asp:Label ID="NLabel" runat="server" Text="Name :"></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="NameText" runat="server"></asp:TextBox><br /><br />
         
            <asp:Label ID="ELabel" runat="server" Text="Email ID :"></asp:Label>
            <asp:TextBox ID="EmailText" runat="server" TextMode="Email"></asp:TextBox>
            <br /><br />

            <asp:Label ID="PLabel" runat="server" Text="Phone :"></asp:Label>
            <asp:TextBox ID="PhoneText" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Label ID="GLabel" runat="server" Text="Gender :"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Value="1" Text="Male"></asp:ListItem>
                <asp:ListItem Value="2" Text="Female"></asp:ListItem>
                <asp:ListItem Value="3" Text="Others"></asp:ListItem>
            </asp:RadioButtonList>
            <br/><br />

            

            <asp:Label ID="DLabel" runat="server" Text="Date of Birth :"></asp:Label>
            <asp:DropDownList ID="ddDate" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="ddMonth" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="ddYear" runat="server"></asp:DropDownList><br /><br />
            
            
            <asp:Label ID="ULabel" runat="server" Text="Username :"></asp:Label>
            <asp:TextBox ID="UserTextBox1" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="PassLabel" runat="server" Text="Password :"></asp:Label>
            <asp:TextBox ID="PasswordText" runat="server" TextMode="Password"></asp:TextBox>
            <br /><br /></div>
					
					<div class="container-login100-form-btn">
						<!--<button class="login100-form-btn">
							Login
						</button>-->
						<asp:Button ID="registerButton" runat="server"  Text="Submit" OnClick="registerButton_Click" class="login100-form-btn"/>

					</div>

					

					
				</form>
			</div>
		</div>
	</div>

</asp:Content>
