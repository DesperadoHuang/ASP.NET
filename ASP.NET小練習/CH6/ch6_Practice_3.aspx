<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch6_Practice_3.aspx.cs" Inherits="ch6_Practice_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            請輸入E-Mail：<asp:TextBox ID="textbox_email" runat="server" TextMode="Email"></asp:TextBox><br />
            <br />
            <asp:Button ID="btSubmit" runat="server" Text="確認" />
            <asp:RegularExpressionValidator ID="rev_email" runat="server"
                ErrorMessage="e-mail格式錯誤" ControlToValidate="textbox_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
    </form>
</body>
</html>
