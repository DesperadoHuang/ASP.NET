<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch4-3_2A.aspx.cs" Inherits="ch4_3_2A" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="XX-Large"></asp:Label><br />
        <asp:TextBox ID="TextBox1" runat="server" Height="200px" Width="500px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine"></asp:TextBox>
    </div>
    </form>
</body>
</html>
