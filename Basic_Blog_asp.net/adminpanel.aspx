<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminpanel.aspx.cs" Inherits="adminpanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    

</head>
<body>
    <form id="form1" runat="server">
        <h1 style="margin-left:25%;">ADMİN PANELİNE HOŞGELDİNİZ</h1>
        <asp:Button ID="Button1"  style=" width:300px; height:150px; margin-top:3%; margin-left:15%;" runat="server" Text="Kullanıcı Düzenle" OnClick="Button1_Click" />
        <asp:Button ID="Button2" style=" width:300px; height:150px;" runat="server" Text="Post Düzenle" OnClick="Button2_Click" />
        <asp:Button ID="Button3" style=" width:300px; height:150px;"  runat="server" Text="Çıkış" OnClick="Button3_Click" />

     </form>
</body>
</html>
