<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginscreen.aspx.cs" Inherits="loginscreen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="header-login-signup.css" rel="stylesheet" />
    <link href="loginscreencss.css" rel="stylesheet" />
    <link href="buttons.css" rel="stylesheet" />
</head>
<body>
   <header class="header-login-signup">
	<div class="header-limiter">
		<h1><font face="Brush Script MT"size="10"><a href="loginedpage.aspx">Canlı Tarih</a></font></h1>
      

	</div>
</header>

<div class="login-page">
  <div class="form">
      <form id="form1" runat="server">
        
      &nbsp;&nbsp;<asp:TextBox ID="username" placeholder="username" runat="server"></asp:TextBox>
          <asp:TextBox ID="password" placeholder="password" runat="server" TextMode="Password"></asp:TextBox>

          <asp:Button ID="Button1" Cssclass="ph-btn-green" runat="server" Text="Giriş Yap" OnClick="Button1_Click1"/>
       
             <font face="tahoma" size="3" color="maroon"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></font>
         

      </form>
  </div>
</div>
   
</body>
</html>
