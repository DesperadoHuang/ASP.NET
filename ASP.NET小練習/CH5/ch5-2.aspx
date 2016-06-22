<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5-2.aspx.cs" Inherits="ch5_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="label1" runat="server" Text="請選擇您喜歡的課程：" Font-Size="XX-Large"></asp:Label><br />
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                <asp:ListItem>資料庫系統</asp:ListItem>
                <asp:ListItem>資料結構</asp:ListItem>
                <asp:ListItem>程式設計</asp:ListItem>
            </asp:CheckBoxList><br />
            <br />
            <asp:Button ID="btSubmit" runat="server" Text="確認送出" OnClick="btSubmit_Click" /><br />
            <br />
            <asp:Label ID="label2" runat="server" Text="您已選的課程如下："></asp:Label><br />
            <asp:TextBox ID="textbox1" runat="server" TextMode="MultiLine" Width="240px" Height="240px"></asp:TextBox>
        </div>
    </form>
</body>
</html>
