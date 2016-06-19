<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch3-8_3.aspx.cs" Inherits="ch3_8_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="呼叫方法" OnClick="Button1_Click" /><br />
            <asp:Button ID="Button2" runat="server" Text="遞迴呼叫方法" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
