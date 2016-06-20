<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch4-2_2.aspx.cs" Inherits="ch4_2_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Label元件"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server" Text="TextBox元件" font-bold="true"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Font-Bold="true" Text="Button元件" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
