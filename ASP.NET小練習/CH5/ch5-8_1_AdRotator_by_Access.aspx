<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5-8_1_AdRotator_by_Access.aspx.cs" Inherits="ch5_8_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Ad.mdb" SelectCommand="SELECT * FROM [Adrotator資料表]"></asp:AccessDataSource>
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="AccessDataSource1" />
    </div>
    </form>
</body>
</html>
