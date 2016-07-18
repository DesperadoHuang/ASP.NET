<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch12-1_3_TreeView_bind_Sitemap.aspx.cs" Inherits="ch12_1_3_TreeView_bind_Sitemap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
           
            <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="XPFileExplorer" NodeIndent="15">
                <DataBindings>
                    <asp:TreeNodeBinding DataMember="SiteMapNode" NavigateUrlField="Url" TextField="Title" ValueField="Description" />
                </DataBindings>
                <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>
        </div>
    </form>
</body>
</html>
