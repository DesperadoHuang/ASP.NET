<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch3-6_2.aspx.cs" Inherits="ch3_6_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button 1" OnClick="bt1OnClick" />
            <asp:Button ID="Button2" runat="server" Text="Button 2" OnClick="bt2OnClick" />
            <asp:Button ID="Button3" runat="server" Text="Button 3" OnClick="bt3OnClick" />
            <asp:Button ID="Button4" runat="server" Text="Button 4" OnClick="bt4OnClick" />
        </div>
    </form>
</body>
</html>
