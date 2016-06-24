<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5-9_Panel.aspx.cs" Inherits="ch5_9_Panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="成績單" Font-Size="XX-Large"></asp:Label><br />
            <br />
            <br />
            <asp:Button ID="btDetail" runat="server" Text="詳細資料" OnClick="btDetail_Click" />&nbsp;&nbsp;&nbsp;<asp:Button ID="btSimple" runat="server" Text="簡易資料" OnClick="btSimple_Click" />
            <asp:Panel ID="panel_Detail" runat="server" HorizontalAlign="Left" Wrap="true" Width="240px" Height="120px" BackImageUrl="~/images/background.PNG">
                學號：S0001
                <br />
                姓名：路人甲<br />
                國文成績：75<br />
                數學成績：95<br />
                平均成績：85<br />
            </asp:Panel>
            <asp:Panel ID="panel_Simple" runat="server" HorizontalAlign="Left" Wrap="true" Width="240px" Height="120px">
                學號：S0001
                <br />
                姓名：路人甲<br />
                平均成績：85<br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
