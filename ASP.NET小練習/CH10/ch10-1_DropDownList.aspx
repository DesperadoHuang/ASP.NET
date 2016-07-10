<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch10-1_DropDownList.aspx.cs" Inherits="ch10_1_DropDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="accessDataSource" runat="server" DataFile="~/App_Data/台灣郵遞區號.mdb" SelectCommand="SELECT [郵遞區號], [城市], [區域] FROM [郵遞區號]"></asp:AccessDataSource>

        </div>
    </form>
</body>
</html>
