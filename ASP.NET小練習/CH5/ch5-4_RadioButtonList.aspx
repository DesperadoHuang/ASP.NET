<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5-4_RadioButtonList.aspx.cs" Inherits="ch5_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    請選擇您的血型：<br />
        <asp:RadioButtonList ID="rbtList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbtListSelectedIndexChanged">
            <asp:ListItem>A型</asp:ListItem>
            <asp:ListItem>B型</asp:ListItem>
            <asp:ListItem>O型</asp:ListItem>
            <asp:ListItem>AB型</asp:ListItem>
        </asp:RadioButtonList><br /><br />
        您的血型是：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    </div>
    </form>
</body>
</html>
