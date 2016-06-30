<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch7-1_2_Response_ReDirect.aspx.cs" Inherits="ch7_1_2_Response_ReDirect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="240px">
            <asp:ListItem>請選擇</asp:ListItem>
            <asp:ListItem Value="1">義大世界購物廣場</asp:ListItem>
            <asp:ListItem Value="2">Google首頁</asp:ListItem>
            <asp:ListItem Value="3">YAHOO首頁</asp:ListItem>
            <asp:ListItem Value="4">移轉到同一目錄下的檔案</asp:ListItem>
        </asp:DropDownList>
    </div>
    </form>
</body>
</html>
