<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch6-4_RangeValidator.aspx.cs" Inherits="ch6_4_RangeValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            請輸入程式設計成績：<asp:TextBox ID="textbox_inputScore" runat="server" TextMode="Number"></asp:TextBox><br />
            <asp:Button ID="btSubmit" runat="server" Text="確認送出" /><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="輸入的值超出範圍(0-100)" ControlToValidate="textbox_inputScore" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        </div>
    </form>
</body>
</html>
