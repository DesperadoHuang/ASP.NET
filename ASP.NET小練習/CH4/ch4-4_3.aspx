<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch4-4_3.aspx.cs" Inherits="ch4_4_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="hpl_1" runat="server" NavigateUrl="http://www.edamall.com.tw/" ImageUrl="~/Resource/edamall_logo.jpg" Target="_blank"></asp:HyperLink><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.edamall.com.tw/" ImageUrl="~/Resource/edamall_logo.jpg" Target="_parent"></asp:HyperLink><br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.edamall.com.tw/" ImageUrl="~/Resource/edamall_logo.jpg" Target="_self"></asp:HyperLink><br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="http://www.edamall.com.tw/" ImageUrl="~/Resource/edamall_logo.jpg" Target="_top"></asp:HyperLink><br />
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="http://www.edamall.com.tw/" ImageUrl="~/Resource/edamall_logo.jpg" Target="_search"></asp:HyperLink><br />
        </div>
    </form>
</body>
</html>
