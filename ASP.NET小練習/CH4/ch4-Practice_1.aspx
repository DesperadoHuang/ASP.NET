<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch4-Practice_1.aspx.cs" Inherits="ch4_Practice_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="使用者登入介面" Font-Size="XX-Large" Font-Bold="True"></asp:Label><br /><br />
            請輸入帳號：<asp:TextBox ID="textbox_inputAccount" runat="server" ToolTip="輸入帳號"></asp:TextBox><br/><br/>
            請輸入密碼：<asp:TextBox ID="textbox_inputPassword" runat="server" MaxLength="10" TextMode="Password" ToolTip="輸入密碼"></asp:TextBox><br/><br/><br/>
            <asp:Button ID="bt_submit" runat="server" Text="確認" OnClick="bt_submit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="bt_cancel" runat="server" Text="取消" OnClick="bt_cancel_Click" /><br/><br/><br/>
            您的帳號：<asp:Label ID="label_showAccount" runat="server" Text=""></asp:Label><br/><br/>
            您的密碼：<asp:Label ID="label_showPassword" runat="server" Text=""></asp:Label><br/>
        </div>
    </form>
</body>
</html>
