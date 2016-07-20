<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch12_Practice_1_TreeView_Left.aspx.cs" Inherits="ch12_Practice_1_TreeView_Left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="accessDataSource" runat="server" DataFile="~/App_Data/TreeView.mdb" SelectCommand="SELECT * FROM [TreeView 資料表]"></asp:AccessDataSource>
            <asp:TreeView ID="TreeView1" runat="server"></asp:TreeView>
        </div>
    </form>
</body>
</html>
