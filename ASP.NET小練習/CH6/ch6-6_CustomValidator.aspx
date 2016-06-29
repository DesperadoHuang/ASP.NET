<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch6-6_CustomValidator.aspx.cs" Inherits="ch6_6_CustomValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            請輸入一個奇數：<br />
            <asp:TextBox ID="textbox_inputNumber" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btSubmit" runat="server" Text="確認" OnClick="btSubmit_Click" /><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="請輸入奇數" ControlToValidate="textbox_inputNumber" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        </div>
    </form>
</body>
</html>
