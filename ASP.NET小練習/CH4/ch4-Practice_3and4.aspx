<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch4-Practice_3and4.aspx.cs" Inherits="ch4_Practice_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div aria-required="False">
            <asp:Label ID="Label1" runat="server" Text="留言板的使用者介面" Font-Size="XX-Large" /><br />
            <br />
            <asp:Label ID="Label2" runat="server" Width="100px">  請輸入大名：</asp:Label><asp:TextBox ID="textbox_inputName" runat="server" ToolTip="name" Width="140px"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label3" runat="server" Width="100px"> 請輸入主旨：</asp:Label><asp:TextBox ID="textbox_inputTitle" runat="server" ToolTip="title" Width="140px"></asp:TextBox><br />
            <br />
            <asp:TextBox ID="textbox_inputMessage" runat="server" Height="240px" Width="240px" TextMode="MultiLine"></asp:TextBox><br />
            <br />
            <asp:Button ID="bt_submit" runat="server" Text="確定" OnClick="bt_submit_Click" /><br />
            <br />
            <asp:Label ID="label_showName" runat="server" Text="您的大名："></asp:Label><br />
            <br />
            <asp:Label ID="label_showTitle" runat="server" Text="您的主旨："></asp:Label><br />
            <br />
            <asp:TextBox ID="textbox_showMessage" runat="server" Text="您的留言：" Width="240px" TextMode="MultiLine" BorderColor="White" ReadOnly="True"></asp:TextBox><br />
            <br />
        </div>
    </form>
</body>
</html>
