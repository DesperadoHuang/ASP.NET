<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="label1" runat="server">您的即時通</asp:Label><br />
            <asp:TextBox ID="textbox1" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="textbox2" runat="server"></asp:TextBox><br />
            <asp:Button ID="bt_sendMessage" runat="server" Text="傳送" OnClick="sendMessageOnClick" PostBackUrl="~/WebForm2.aspx"/>
        </div>
    </form>
</body>
</html>
