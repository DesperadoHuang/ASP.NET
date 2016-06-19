<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch3-8_2.aspx.cs" Inherits="ch3_8_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="傳直呼叫" OnClick="Button1_Click" /><br />
            <asp:Button ID="Button2" runat="server" Text="傳址呼叫" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
