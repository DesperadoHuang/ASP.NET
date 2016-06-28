<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5_Practice_2.aspx.cs" Inherits="ch5_Practice_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        請選修您喜歡的課程：<br /><br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem Value="3">系統分析 3 學分</asp:ListItem>
            <asp:ListItem Value="4">資料結構 4 學分</asp:ListItem>
            <asp:ListItem Value="5">程式設計 5 學分</asp:ListItem>
        </asp:CheckBoxList><br /><br />
        <asp:Button ID="btSubmit" runat="server" Text="確認選擇" OnClick="btSubmit_Click" /><br /><br />
        您已選的課程及總共的學分數：<br /><br />
        <asp:TextBox ID="TextBox1" runat="server" Height="120px" Width="240px" TextMode="MultiLine" ></asp:TextBox>總學分數為：<asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
