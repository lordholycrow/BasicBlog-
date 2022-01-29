<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminuser.aspx.cs" Inherits="adminuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
          margin-left:15%;
        }
       </style> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style="margin-left:25%;">
            <p><h1 class="auto-style1">KULLANICI TABLOSU</h1></p>
        <asp:GridView ID="GridView1" runat="server" GridLines="None" 
            AutoGenerateColumns="False" CssClass="grid" BackColor="White"
            BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3"
            CellSpacing="1"  DataSourceID="SqlDataSource1"  
            AllowPaging="True" DataKeyNames="userid">
                        <Columns>
                <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" InsertVisible="False" ReadOnly="True" />
              <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
              <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
              <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
              <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
              <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
              <asp:BoundField DataField="ages" HeaderText="ages" SortExpression="ages" />
 
                            <asp:CommandField DeleteText="Sil" InsertText="Ekle" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Güncelle" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server"
          ConnectionString="<%$ ConnectionStrings:canlitarihConnectionString %>"
          SelectCommand="SELECT [userid],[username], [password], [email], [name], [surname], [ages] FROM [userinfo]"
          UpdateCommand="UPDATE [userinfo] SET [username] = @username , [password] =  @password , [email] = @email , [name]=@name , [surname]=@surname, [ages]=@ages WHERE [userid] = @userid" DeleteCommand="Delete [userinfo] Where [userid]=@userid" ProviderName="System.Data.SqlClient">
             <DeleteParameters>
                 <asp:Parameter Name="userid" />
             </DeleteParameters>

      </asp:SqlDataSource>
          
        <asp:Button ID="Button2" style="margin-left:7%; width:200px;height:100px;" runat="server" Text="ÇIKIŞ" OnClick="Button2_Click" />
        <asp:Button ID="Button1" style="width:200px;height:100px;" runat="server" Text="POST PANELİNE GİT" OnClick="Button1_Click" />
    </div>
    </div>
    </form>
</body>
</html>
