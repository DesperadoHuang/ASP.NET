<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch4-5.aspx.cs" Inherits="ch4_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="label_1" runat="server" Text="題目：判斷奇數或偶數" Font-Size="XX-Large"></asp:Label><br /><br />
            <asp:Label ID="label_2" runat="server" Text="請輸入一個數值：" /><asp:TextBox ID="textbox_inputValue" runat="server"  AutoPostBack="true" OnTextChanged="textbox_inputValue_TextChanged"/><br /><br />
            <asp:Label ID="label_3" runat="server" Text="結&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;果：" />
            <asp:Label ID="label_result" runat="server" text="顯示結果"/>
        </div>
    </form>
</body>
</html>
