<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch9-6_8_GridView_HyperLinkField_Practice_B.aspx.cs" Inherits="ch9_6_8_GridView_HyperLinkField_Practice_B" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:AccessDataSource ID="accessDataSource" runat="server" DataFile="~/App_Data/學生資料庫2.accdb" SelectCommand="SELECT * FROM [選課資料表]"></asp:AccessDataSource>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
    </form>
</body>
</html>
