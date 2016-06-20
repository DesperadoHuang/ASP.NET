<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch4-2_1.aspx.cs" Inherits="ch4_2_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="這只是一個Label元件測試"></asp:Label><br />
        <asp:Button ID="Button1" runat="server" Text="這只是一個Button元件測試" OnClick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
