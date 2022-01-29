<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
    <link href="myprofile.css" rel="stylesheet" />
    <link href="header-login-signup.css" rel="stylesheet" />
    <link href="buttons.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         
   <header class="header-login-signup">
	<div class="header-limiter">
		<h1><font face="Brush Script MT"size="10"><a href="loginedpage.aspx">Canlı Tarih</a></font></h1>
      
		
		<ul>
			  <asp:Label ID="Label1"  style="margin-right:900px; margin-bottom:50px;" runat="server" Text="Label"></asp:Label>
           <li><asp:Button ID="Button1" runat="server" CssClass="ph-button ph-btn-red" Text="Çıkış" OnClick="Button1_Click" /></li>
            
		</ul>
        
		
	</div>
</header>
     

         <div class="backgroundistanbul">
               <asp:GridView ID="GridView1" style=" width:200px; height:100px;  margin-top:200px; margin-left:550px;" runat="server" AutoGenerateColumns="False" DataKeyNames="userid" DataSourceID="SqlDataSource1">
                   
                 <Columns>
                     <asp:BoundField DataField="userid" HeaderText="userid" InsertVisible="False" ReadOnly="True" SortExpression="userid" />
                     <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                     <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                     <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                     <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                     <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                     <asp:BoundField DataField="ages" HeaderText="ages" SortExpression="ages" />
                 </Columns>
                  <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#7d751c" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:canlitarihConnectionString2 %>" SelectCommand="SELECT * FROM [userinfo] WHERE ([username] = @username)">
                 <SelectParameters>
                     <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
           
             
               <h1 style="color:white; margin-left:590px;">Paylaştığı postlar</h1>
             <asp:GridView ID="GridView2" style="margin-left:500px;" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
                 <Columns>
                     <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                     <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                     <asp:BoundField DataField="text" HeaderText="text" SortExpression="text" />
                     <asp:BoundField DataField="pictureurl" HeaderText="pictureurl" SortExpression="pictureurl" />
                     <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                 </Columns>
                 <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#7d751c" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
             </asp:GridView>


             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:canlitarihConnectionString %>" SelectCommand="SELECT * FROM [post] WHERE ([username] = @username)">
                 <SelectParameters>
                     <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>


             </div>


      
    </form>
</body>
</html>
