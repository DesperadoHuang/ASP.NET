<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5-6.aspx.cs" Inherits="ch5_6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            請選修您喜歡的課程：<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="null">請選擇課程</asp:ListItem>
                <asp:ListItem>資料庫系統</asp:ListItem>
                <asp:ListItem>系統分析設計</asp:ListItem>
                <asp:ListItem>ASP.NET程式設計</asp:ListItem>
                <asp:ListItem>資料庫系統</asp:ListItem>
            </asp:DropDownList><br />
            <br />
            您已選擇的課程：<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
        </div>
    </form>
</body>
</html>
