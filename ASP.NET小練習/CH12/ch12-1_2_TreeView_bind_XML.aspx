<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch12-1_2_TreeView_bind_XML.aspx.cs" Inherits="ch12_1_2_TreeView_bind_XML" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/xml/eeView.xml"></asp:XmlDataSource>
            <asp:TreeView ID="TreeView1" runat="server" DataSourceID="XmlDataSource1" ImageSet="XPFileExplorer" NodeIndent="15">
                <DataBindings>
                    <asp:TreeNodeBinding DataMember="TreeNode" TextField="name" ValueField="value" />
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
