<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5-10_View_and_MultiView.aspx.cs" Inherits="ch5_10_View_and_MultiView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:Label ID="Label1" runat="server" Text="使用者登入介面" Font-Size="XX-Large"></asp:Label><br /><br />
                        帳號：<asp:TextBox ID="textbox_inputAccount" runat="server" ></asp:TextBox><br />
                        密碼：<asp:TextBox ID="textbox_inputPassword" runat="server"></asp:TextBox><br />
                        <br />
                        <asp:Button ID="btSubmit" runat="server" Text="登入" OnClick="btSubmit_Click" /><br />
                    </asp:View>

                    <asp:View ID="View2" runat="server">
                        <asp:Label ID="label_userName" runat="server"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="登入成功" Font-Size="XX-Large"></asp:Label><br />
                        <br />
                        <asp:Button ID="btSignOut" runat="server" Text="登出" OnClick="btSignOut_Click" /><br />
                    </asp:View>
                </asp:MultiView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
