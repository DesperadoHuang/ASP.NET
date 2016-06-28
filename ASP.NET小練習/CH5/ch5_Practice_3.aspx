<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5_Practice_3.aspx.cs" Inherits="ch5_Practice3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            請選擇總類：
            <asp:DropDownList ID="dropDownList1" runat="server" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="dropDownList1_SelectedIndexChanged" >
                <asp:ListItem Selected="True" Value="0">請選擇總類</asp:ListItem>
                <asp:ListItem Value="1">網球</asp:ListItem>
                <asp:ListItem Value="2">桌球</asp:ListItem>
                <asp:ListItem Value="3">羽毛球</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;請選擇品牌：
            <asp:DropDownList ID="dropDownList2" runat="server" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="dropDownList2_SelectedIndexChanged" /><br />
            <br />
            總類：<asp:Label ID="label_category" runat="server" ></asp:Label><br />
            品牌：<asp:Label ID="label_brand" runat="server" ></asp:Label><br />

             
        </div>
    </form>
</body>
</html>
