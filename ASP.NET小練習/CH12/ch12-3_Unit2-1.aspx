<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch12-3_Unit2-1.aspx.cs" Inherits="ch12_3_Unit2_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath><br />
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1"></asp:Menu>
        Unit2-1
    </div>
    </form>
</body>
</html>
