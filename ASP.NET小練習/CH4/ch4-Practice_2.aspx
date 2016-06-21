<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch4-Practice_2.aspx.cs" Inherits="ch4_Practice_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="使用者登入介面" Font-Size="XX-Large" Font-Bold="true"></asp:Label><br />
            <br />
            請輸入帳號：<asp:TextBox ID="textbox_inputAccount" runat="server" OnTextChanged="myInputAccoutnOnTextChanged" AutoPostBack="true"></asp:TextBox><br />
            <br />
            請輸入密碼：<asp:TextBox ID="textbox_inputPassword" runat="server" OnTextChanged="myInputPasswordOnTextChanged" AutoPostBack="true" TextMode="Password" style="height: 19px"></asp:TextBox><br />
            <br />

            <br />
            您的帳號：<asp:Label ID="label_showAccount" runat="server"></asp:Label><br />
            <br />
            您的密碼：<asp:Label ID="label_showPassword" runat="server"></asp:Label><br />

        </div>
    </form>
</body>
</html>
