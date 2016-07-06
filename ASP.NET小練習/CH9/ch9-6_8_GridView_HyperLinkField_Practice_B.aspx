<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch9-6_8_GridView_HyperLinkField_Practice_B.aspx.cs" Inherits="ch9_6_8_GridView_HyperLinkField_Practice_B" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="accessDataSource" runat="server" DataFile="~/App_Data/MyDatabase.mdb" SelectCommand="select 選課資料表.學號,姓名,選課資料表.課程代號,課程名稱,成績
from [選課資料表],[學生資料表],[課程資料表]
where 選課資料表.學號=學生資料表.學號 and 選課資料表.課程代號=課程資料表.課程代號 and 選課資料表.學號=?">
                <SelectParameters>
                    <asp:QueryStringParameter Name="?" QueryStringField="studentNumber" />
                </SelectParameters>
            </asp:AccessDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="accessDataSource" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="學號" HeaderText="學號" SortExpression="學號" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="課程代號" HeaderText="課程代號" SortExpression="課程代號" />
                    <asp:BoundField DataField="課程名稱" HeaderText="課程名稱" SortExpression="課程名稱" />
                    <asp:BoundField DataField="成績" HeaderText="成績" SortExpression="成績" />
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
            </asp:GridView>
        </div>
    </form>
</body>
</html>
