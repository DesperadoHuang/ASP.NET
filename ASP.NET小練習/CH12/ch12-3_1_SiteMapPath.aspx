﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch12-3_1_SiteMapPath.aspx.cs" Inherits="ch12_3_1_SiteMapPath" %>

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
        <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
    </div>
    </form>
</body>
</html>
