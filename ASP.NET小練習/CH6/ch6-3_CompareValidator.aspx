<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch6-3_CompareValidator.aspx.cs" Inherits="ch6_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            請設定密碼：<asp:TextBox ID="textbox_inputPassword" runat="server" TextMode="Password"></asp:TextBox><br />
            請確認密碼：<asp:TextBox ID="textbox_checkPassword" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="btSubmit" runat="server" Text="確定" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="輸入密碼不一致" 
                ControlToCompare="textbox_checkPassword" ControlToValidate="textbox_inputPassword">
            </asp:CompareValidator>
        </div>
    </form>
</body>
</html>
