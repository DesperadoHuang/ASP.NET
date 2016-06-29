<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch6_Practice_2.aspx.cs" Inherits="ch6_Practice_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            請輸入您的生日：(YYYY/MM/DD)<br />
            <br />
            <asp:Label ID="Label1" runat="server" ></asp:Label><br />
            <br />
            <asp:TextBox ID="textbox_date" runat="server" TextMode="Date"></asp:TextBox><br />
            <br />
            <asp:Button ID="btSubmit" runat="server" Text="確認" />
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ErrorMessage="日期超出範圍" ControlToValidate="textbox_date"  Type="Date">
            </asp:RangeValidator>
        </div>
    </form>
</body>
</html>
