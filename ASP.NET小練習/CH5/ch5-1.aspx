<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5-1.aspx.cs" Inherits="ch5_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="請選修您喜歡的課程：" Font-Size="XX-Large"></asp:Label><br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="資料庫系統" /><br />
            <br />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="資料結構" /><br />
            <br />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="程式設計" /><br />
            <br />
            <asp:Button ID="btSubmit" runat="server" Text="確定" OnClick="btSubmit_Click" /><br /><br />
            您已選的課程如下：<br />
            <asp:TextBox ID="TextBox1" runat="server" Height="100px" Width="300px" TextMode="MultiLine"></asp:TextBox><br />
        </div>
    </form>
</body>
</html>
