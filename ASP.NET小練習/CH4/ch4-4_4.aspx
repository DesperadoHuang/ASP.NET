<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch4-4_4.aspx.cs" Inherits="ch4_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="imgBt_1" runat="server" ImageUrl="~/Resource/edamall_logo.jpg"  OnClick="imgBt_1_Click" /><br />
            <asp:Label ID="label_1" runat="server"  ></asp:Label>
        </div>
    </form>
</body>
</html>
