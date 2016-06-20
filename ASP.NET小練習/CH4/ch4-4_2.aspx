<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch4-4_2.aspx.cs" Inherits="ch4_4_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="bt_1" runat="server" OnClick="btOnClick" text="Button元件"/><br /><br />
            <asp:LinkButton ID="lbt" runat="server" OnClick="lbtOnClick" Text="LinkButton元件"/><br /><br />
            <asp:Label ID="label_1" runat="server" ></asp:Label>
        </div>
    </form>
</body>
</html>
