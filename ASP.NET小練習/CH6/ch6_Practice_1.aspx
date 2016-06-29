<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch6_Practice_1.aspx.cs" Inherits="ch6_Practice_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            姓名：<asp:TextBox ID="textbox_inputName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_name" runat="server" 
                ErrorMessage="姓名必填" ControlToValidate="textbox_inputName"></asp:RequiredFieldValidator ><br />
            電話：<asp:TextBox ID="textbox_inputPhone" runat="server" TextMode="Phone"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_phone" runat="server"
                ErrorMessage="電話必填" ControlToValidate="textbox_inputPhone">
            </asp:RequiredFieldValidator><br />
            <br />
            <asp:Button ID="btSubmit" runat="server" Text="確認" OnClick="btSubmit_Click" /><br />
            <br />
            姓名：<asp:Label ID="label_showName" runat="server" ></asp:Label><br />
            電話：<asp:Label ID="label_showPhone" runat="server" ></asp:Label><br />
        </div>
    </form>
</body>
</html>
