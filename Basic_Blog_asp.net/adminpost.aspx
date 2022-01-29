<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminpost.aspx.cs" Inherits="adminpost" %>

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
            <div style="margin-left:25%;">
            <p><h1 class="auto-style1">POST TABLOSU</h1></p>
        <asp:GridView ID="GridView1" runat="server" GridLines="None" 
            AutoGenerateColumns="False" CssClass="grid" BackColor="White"
            BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3"
            CellSpacing="1"  DataSourceID="SqlDataSource1"  DataKeyNames="id"
            AllowPaging="True">
                        <Columns>
                <asp:TemplateField>
                </asp:TemplateField>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
              <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
              <asp:BoundField DataField="text" HeaderText="text" SortExpression="text" />
              <asp:BoundField DataField="pictureurl" HeaderText="pictureurl" SortExpression="pictureurl" />
              <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
          
 
                <asp:CommandField ShowEditButton="true" EditText="Düzenle" CancelText="İptal" UpdateText="Güncelle" />
                <asp:ButtonField CommandName="Delete" Text="Sil" ItemStyle-ForeColor="red" >
                <ItemStyle ForeColor="Red"></ItemStyle>
                </asp:ButtonField>
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
          ConnectionString="<%$ ConnectionStrings:canlitarihConnectionString2 %>"
          SelectCommand="SELECT [id],[username], [text], [pictureurl], [date] FROM [post]"
          UpdateCommand="UPDATE [post] SET  [text] =  @text , [pictureurl] = @pictureurl , [date]=@date  WHERE [id] = @id" DeleteCommand="Delete [post] Where [id]=@id">
      </asp:SqlDataSource>
                </div>
       
        
        
        <asp:Button ID="Button2" style="margin-left:40%; width:200px;height:100px;" runat="server" Text="ÇIKIŞ" OnClick="Button2_Click" />
        <asp:Button ID="Button1"   style="width:200px;height:100px;" runat="server" Text="KULLANICI PANELİNE GİT" OnClick="Button1_Click" />
    </form>
</body>
</html>
