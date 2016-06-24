<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5-8_AdRotator_by_xml.aspx.cs" Inherits="ch5_8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Ad.xml"></asp:XmlDataSource>
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
    </div>
    </form>
</body>
</html>
