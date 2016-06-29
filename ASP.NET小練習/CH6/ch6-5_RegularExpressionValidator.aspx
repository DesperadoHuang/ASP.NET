<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch6-5_RegularExpressionValidator.aspx.cs" Inherits="ch6_5_RegularExpressionValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            請輸入身分證字號：<asp:TextBox ID="textbox_inputID" runat="server"></asp:TextBox><br />
            <asp:Button ID="btSubmit" runat="server" Text="確認" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="您輸入的ID格是錯誤" ControlToValidate="textbox_inputID" ValidationExpression="[a-zA-Z]\d{9}"></asp:RegularExpressionValidator>
        </div>
    </form>
</body>
</html>
