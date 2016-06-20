<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch4-3_2.aspx.cs" Inherits="ch4_3_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Literal ID="Literal1" runat="server">使用者登入介面</asp:Literal><br />
        <br />
        <asp:Label ID="label_Accunt" runat="server" >請輸入帳號：</asp:Label><asp:TextBox ID="textBox_inputAccunt" runat="server" tooltop="輸入帳號"></asp:TextBox><br />
        <asp:Label ID="label_Password" runat="server" >請輸入密碼：</asp:Label><asp:TextBox ID="textBox_inputPassword" runat="server" ToolTip="輸入密碼" TextMode="Password" MaxLength="10"></asp:TextBox><br />
        <br />
        <asp:Button ID="bt_Submit" runat="server" Text="提交" OnClick="bt_Submit_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="bt_Cancel" runat="server" Text="取消" OnClick="bt_Cancel_Click" />
    </div>
    </form>
</body>
</html>
