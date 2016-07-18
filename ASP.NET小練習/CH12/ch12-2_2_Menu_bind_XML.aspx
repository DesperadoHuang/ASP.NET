<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch12-2_2_Menu_bind_XML.aspx.cs" Inherits="ch12_2_2_Menu_bind_XML" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/xml/Menu.xml"></asp:XmlDataSource>
        <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DataSourceID="XmlDataSource1" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
            <DataBindings>
                <asp:MenuItemBinding DataMember="TreeNode" TextField="name" ValueField="value" />
            </DataBindings>
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#FFCC66" />
        </asp:Menu>
    </div>
    </form>
</body>
</html>
