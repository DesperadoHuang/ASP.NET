<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5-3_RadioButton.aspx.cs" Inherits="ch5_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            請選擇您的性別：<br />
            <br />
            <asp:RadioButton ID="rbtMale" runat="server" GroupName="gender" Text="男" OnCheckedChanged="rbtMale_CheckedChanged" AutoPostBack="true"/><br />
            <asp:RadioButton ID="rbtFemale" runat="server" GroupName="gender" Text="女" OnCheckedChanged="rbtFemale_CheckedChanged" AutoPostBack="true"/><br />
            <br />
            您的性別是：<asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
        </div>
    </form>
</body>
</html>
