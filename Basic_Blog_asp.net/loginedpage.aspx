<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginedpage.aspx.cs" Inherits="loginedpage" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
    <link href="header-login-signup.css" rel="stylesheet" />
    <link href="footer-basic-centered.css" rel="stylesheet" />
    <link href="loginedpage.css" rel="stylesheet" />
    <link href="buttons.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 25px;

        }


        .auto-style2 {
            width: 25px;
        }
        .auto-style3 {
            margin-left: 25px;
        }
        .auto-style4 {
            width: 25px;
        }

    

    </style>
</head>
<body>
    
    <form id="form1" runat="server">
         
   <header class="header-login-signup">
	<div class="header-limiter">
		<h1><font face="Brush Script MT"size="10"><a href="loginedpage.aspx">Canlı Tarih</a></font></h1>
  
		
		<ul>
         
	     <asp:Label ID="welcomelabel" style="margin-right:900px; margin-bottom:50px;" runat="server" Text="Label"></asp:Label>
            <li><a href="myprofile.aspx">Profilim</a></li>
            <li><asp:Button ID="Button1" runat="server" CssClass="ph-button ph-btn-red" Text="Çıkış" OnClick="Button1_Click" /></li>
    
		</ul>
       
         
         <div style="margin-left:400px;">        
             <asp:Label ID="Label1" runat="server" Text="Yazıyı buraya yazınız     "></asp:Label> 
                 <asp:TextBox style="margin-top:100px;" ID="TextBox1" runat="server"   Rows="5" TextMode="MultiLine"></asp:TextBox>
                <asp:Label style="margin-top:110px; margin-left:50px;" ID="Label2" runat="server"  Text="Resim Seçiniz "></asp:Label>
                 <asp:FileUpload  ID="FileUpload1"  runat="server" />
             
             </div>
        
               <div style="margin-left:45%;">          
                   <asp:Button ID="Button2" runat="server"  CssClass="ph-button ph-btn-green"   style="margin-top:24px; width: 200px;height: 56px; "  Text="Gönderi Ekle" OnClick="Button2_Click1" />
                  
             </div>
        <asp:Label ID="Label3" style="margin-left:550px;" runat="server" Text=""></asp:Label>

        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table style="margin-left:400px; margin-top:50px;">
                    <tr>
                        <td class="auto-style2" >
                            <%#Eval("username")%>
                        </td>
                       
                        <td  class="auto-style1">

                            <asp:TextBox ID="TextBox2" Text='<%#Eval("text")%>' runat="server" Rows="5" TextMode="MultiLine" MaxLength="5" ReadOnly="True" ValidateRequestMode="Enabled" Wrap="False"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                        </td>
                        <td>
                           <img src="  <%#Eval("pictureurl")%> " height="200" width="200" class="auto-style3" />
                        </td>
                        <td class="auto-style1">
                            <p>      </p>
                        </td>
                         <td>
                            <%#Eval("date")%>
                        </td>
               
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
	 
	</div>
 

   
</header>

       

         <div class="defend">
             
            <%-- <img style="width:auto;height:auto;" src="loginedscreen.jpg" />--%>
          
       </div>

 <%--  <footer class="footer-basic-centered">

			<p class="footer-company-motto">Yaşayan Tarih.</p>

			<p class="footer-links">
				<a href="#">Home</a>
				·
				<a href="#">Blog</a>
				·
				<a href="#">Pricing</a>
				·
				<a href="#">About</a>
				·
				<a href="#">Faq</a>
				·
				<a href="#">Contact</a>
			</p>

			<p class="footer-company-name">HolyCrow&copy;2019</p>

		</footer>--%>
    </form>
</body>
</html>
