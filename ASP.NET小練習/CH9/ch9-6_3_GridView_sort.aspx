<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch9-6_3_GridView_sort.aspx.cs" Inherits="ch9_6_3_GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:AccessDataSource ID="accessDataSource" runat="server" DataFile="~/App_Data/MyDatabase.mdb" SelectCommand="SELECT * FROM [學生成績表]"></asp:AccessDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="序號" DataSourceID="accessDataSource" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="序號" HeaderText="序號" ReadOnly="True" SortExpression="序號" />
                <asp:BoundField DataField="學號" HeaderText="學號" SortExpression="學號" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="性別" HeaderText="性別" SortExpression="性別" />
                <asp:BoundField DataField="資料庫成績" HeaderText="資料庫成績" SortExpression="資料庫成績" />
                <asp:BoundField DataField="系統分析成績" HeaderText="系統分析成績" SortExpression="系統分析成績" />
                <asp:BoundField DataField="程式設計成績" HeaderText="程式設計成績" SortExpression="程式設計成績" />
                <asp:BoundField DataField="計算機概論成績" HeaderText="計算機概論成績" SortExpression="計算機概論成績" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView><br />
        請指定排序欄位名稱：<asp:DropDownList ID="dropDownList" runat="server">
            <asp:ListItem>序號</asp:ListItem>
            <asp:ListItem>學號</asp:ListItem>
            <asp:ListItem>姓名</asp:ListItem>
            <asp:ListItem>性別</asp:ListItem>
            <asp:ListItem>資料庫成績</asp:ListItem>
            <asp:ListItem>系統分析成績</asp:ListItem>
            <asp:ListItem>程式設計成績</asp:ListItem>
            <asp:ListItem>計算機概論成績</asp:ListItem>
        </asp:DropDownList><br />
        <asp:Button ID="btAscendingOrder" runat="server" Text="遞增排序" OnClick="btAscendingOrder_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btDescendingSort" runat="server" Text="遞減排序" OnClick="btDescendingSort_Click" />
    </div>
    </form>
</body>
</html>
