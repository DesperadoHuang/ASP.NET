<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch3-6_2A.aspx.cs" Inherits="ch3_6_2A" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            請輸入一個正整數：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            此數為：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" text="Button 1"/><br />

        </div>
    </form>
</body>
</html>
