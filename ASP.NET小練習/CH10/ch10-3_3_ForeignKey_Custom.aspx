<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch10-3_3_ForeignKey_Custom.aspx.cs" Inherits="ch10_3_3_ForeignKey_Custom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .style1 {
            width: 49%;
            border-style: solid;
            border-width: 1px;
        }

        .style5 {
            width: 68px;
        }

        .style4 {
            width: 91px;
        }

        .style3 {
            width: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="accessDataSource_main" runat="server" DataFile="~/App_Data/MyDatabase.mdb" DeleteCommand="DELETE FROM [學生資料表] WHERE [學號] = ?" InsertCommand="INSERT INTO [學生資料表] ([學號], [姓名], [班級], [電話]) VALUES (?, ?, ?, ?)" SelectCommand="SELECT * FROM [學生資料表]" UpdateCommand="UPDATE [學生資料表] SET [姓名] = ?, [班級] = ?, [電話] = ? WHERE [學號] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="學號" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="學號" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="班級" Type="String" />
                    <asp:Parameter Name="電話" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="班級" Type="String" />
                    <asp:Parameter Name="電話" Type="String" />
                    <asp:Parameter Name="學號" Type="String" />
                </UpdateParameters>
            </asp:AccessDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="學號" DataSourceID="accessDataSource_main" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="學號" HeaderText="學號" ReadOnly="True" SortExpression="學號" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="班級" HeaderText="班級" SortExpression="班級" />
                    <asp:BoundField DataField="電話" HeaderText="電話" SortExpression="電話" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
            <asp:AccessDataSource ID="accessDataSource_sub" runat="server" DataFile="~/App_Data/MyDatabase.mdb" DeleteCommand="DELETE FROM [選課資料表] WHERE [學號] = ? AND [課程代號] = ?" InsertCommand="INSERT INTO [選課資料表] ([學號], [課程代號], [成績]) VALUES (?, ?, ?)" SelectCommand="SELECT * FROM [選課資料表] WHERE ([學號] = ?)" UpdateCommand="UPDATE [選課資料表] SET [成績] = ? WHERE [學號] = ? AND [課程代號] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="學號" Type="String" />
                    <asp:Parameter Name="課程代號" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="DetailsView1" Name="學號" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="課程代號" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="成績" PropertyName="Text" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DetailsView1" Name="學號" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="成績" Type="Int32" />
                    <asp:Parameter Name="學號" Type="String" />
                    <asp:Parameter Name="課程代號" Type="String" />
                </UpdateParameters>
            </asp:AccessDataSource>
            <table class="style1">
                <tr>
                    <td bgcolor="Yellow" colspan="3" style="text-align: center">新增選課</td>
                </tr>
                <tr>
                    <td class="style5">課號</td>
                    <td class="style4">成績</td>
                    <td class="style3"></td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="style3">
                        <asp:Button ID="Button1" runat="server" Text="加選課程" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="學號,課程代號" DataSourceID="accessDataSource_sub" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="學號" HeaderText="學號" ReadOnly="True" SortExpression="學號" />
                    <asp:BoundField DataField="課程代號" HeaderText="課程代號" ReadOnly="True" SortExpression="課程代號" />
                    <asp:BoundField DataField="成績" HeaderText="成績" SortExpression="成績" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
