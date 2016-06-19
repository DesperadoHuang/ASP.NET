<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch3-7_3.aspx.cs" Inherits="ch3_7_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
            <asp:Button ID="Button1" runat="server" Text="Button 1" OnClick="Button1_Click" /><br />
            <asp:Button ID="Button2" runat="server" Text="Button 2" OnClick="Button2_Click"  />
        </div>
    </form>
</body>
</html>
