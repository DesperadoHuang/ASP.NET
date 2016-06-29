<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch6-2_RequiredFieldValidator.aspx.cs" Inherits="ch6_2" %>

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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="一定要輸入姓名" ControlToValidate="textbox_inputName" >
            </asp:RequiredFieldValidator><br />
            電話：<asp:TextBox ID="textbox_inputPhone" runat="server" TextMode="Phone"></asp:TextBox><br/>
            <asp:Button ID="btSubmit" runat="server" Text="確認送出" OnClick="btSubmit_Click" />
        </div>
    </form>
</body>
</html>
