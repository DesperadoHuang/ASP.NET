<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch7-3_Session_A.aspx.cs" Inherits="ch7_3_Session_A" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    帳號：<asp:TextBox ID="textbox_inputAccount" runat="server"></asp:TextBox><br />
        密碼：<asp:TextBox ID="textbox_inputPassword" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="btSubmit" runat="server" Text="確認" OnClick="btSubmit_Click" />
    </div>
    </form>
</body>
</html>
