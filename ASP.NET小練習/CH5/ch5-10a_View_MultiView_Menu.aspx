<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5-10a_View_MultiView_Menu.aspx.cs" Inherits="ch5_10a_View_MultiView_Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="微軟正黑體" Font-Size="X-Large" ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px" OnMenuItemClick="Menu1_MenuItemClick">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#B5C7DE" />
                <DynamicSelectedStyle BackColor="#507CD1" />
                <Items>
                    <asp:MenuItem Selected="True" Text="項目1" Value="0"></asp:MenuItem>
                    <asp:MenuItem Text="項目2" Value="1"></asp:MenuItem>
                    <asp:MenuItem Text="項目3" Value="2"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
            <asp:Panel ID="Panel1" runat="server" BackColor="#507CD1">
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">這裡是項目1</asp:View>
                    <asp:View ID="View2" runat="server">這裡是項目2</asp:View>
                    <asp:View ID="View3" runat="server">這裡是項目3</asp:View>
                </asp:MultiView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
