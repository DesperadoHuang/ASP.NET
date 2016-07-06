<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch9_Practice_2.aspx.cs" Inherits="ch9_Practice_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AccessDataSource ID="accessDataSource" runat="server" DataFile="~/App_Data/MyDatabase.mdb" SelectCommand="SELECT * FROM [學生選修成績表]" DeleteCommand="DELETE FROM [學生選修成績表] WHERE [學號] = ?" InsertCommand="INSERT INTO [學生選修成績表] ([學號], [姓名], [選修課程], [成績]) VALUES (?, ?, ?, ?)" UpdateCommand="UPDATE [學生選修成績表] SET [姓名] = ?, [選修課程] = ?, [成績] = ? WHERE [學號] = ?">
            <DeleteParameters>
                <asp:Parameter Name="學號" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="學號" Type="String" />
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="選修課程" Type="String" />
                <asp:Parameter Name="成績" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="選修課程" Type="String" />
                <asp:Parameter Name="成績" Type="Int32" />
                <asp:Parameter Name="學號" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>  
         &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="學號" DataSourceID="accessDataSource" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" OnClientClick="return confirm('確定刪除此資料？');"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="學號" HeaderText="學號" ReadOnly="True" SortExpression="學號" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="選修課程" HeaderText="選修課程" SortExpression="選修課程" />
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
        <br />
    </div>
    </form>
</body>
</html>
