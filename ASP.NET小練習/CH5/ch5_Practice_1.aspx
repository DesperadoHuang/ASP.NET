<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5_Practice_1.aspx.cs" Inherits="ch5_Practice_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Width="320px">
                <asp:Calendar ID="calendar1" runat="server" Width="320px" OnSelectionChanged="calendar1_SelectionChanged"></asp:Calendar>
                <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center" BackColor="#cccccc">我的行事曆</asp:Panel>
                起點日期：</asp:Label><asp:TextBox ID="textbox_StartDate" runat="server" ReadOnly="True"></asp:TextBox><asp:Button ID="bt_Start" runat="server" Text="起" OnClick="bt_Start_Click" /><br />
                終點日期：</asp:Label><asp:TextBox ID="textbox_EndDate" runat="server" ReadOnly="True"></asp:TextBox><asp:Button ID="bt_End" runat="server" Text="訖" /><br />
                <asp:TextBox ID="textbox_ShowMessage" runat="server" Height="100px" TextMode="MultiLine" Width="320px"></asp:TextBox>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
