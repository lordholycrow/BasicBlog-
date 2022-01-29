<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link href="loginscreencss.css" rel="stylesheet" />
<link href="header-login-signup.css" rel="stylesheet" />
<body>
    <header class="header-login-signup">
	<div class="header-limiter">
		<h1><font face="Brush Script MT"size="10"><a href="mainpage.aspx">Canlı Tarih</a></font></h1>

	</div>
</header>

    <form id="form1" runat="server">
   <div class="signup-page" style="margin-top:100px">
        <div class="form">
      
              <asp:TextBox ID="username" runat="server" placeholder="username"></asp:TextBox> 
            <asp:TextBox ID="password" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="email" runat="server" placeholder="email" TextMode="Email"></asp:TextBox>
            <asp:TextBox ID="name" runat="server" placeholder="name" ></asp:TextBox>
            <asp:TextBox ID="surname" runat="server" placeholder="surname" ></asp:TextBox>      
            <asp:DropDownList ID="DropDownList1"  runat="server" style="background-color:#f2f2f2; width: 362px;height: 42px;margin-bottom:10px;">
                <asp:ListItem>70'ler ve öncesi</asp:ListItem>
                 <asp:ListItem>80'ler</asp:ListItem>
                 <asp:ListItem>90'lar</asp:ListItem>
                 <asp:ListItem>2000'ler ve sonrası</asp:ListItem>
            </asp:DropDownList>
            
            <asp:Button ID="Button1" BackColor="#009933" runat="server" Text="Signup" OnClick="Button1_Click" />
                

        </div>
   
   </div>


    </form>
</body>
</html>
