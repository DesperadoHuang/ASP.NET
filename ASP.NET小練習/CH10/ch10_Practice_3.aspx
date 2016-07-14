<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch10_Practice_3.aspx.cs" Inherits="ch10_Practice_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server"></asp:Panel>
            <table>
                <tr>
                    <td>
                        <asp:Panel ID="Panel2" runat="server">
                            <asp:AccessDataSource ID="accessDataSource" runat="server" DataFile="~/App_Data/MyDatabase.mdb" DeleteCommand="DELETE FROM [學生選修成績表] WHERE [學號] = ?" InsertCommand="INSERT INTO 學生選修成績表(學號, 姓名, 選修課程, 成績) VALUES (?, ?, ?, ?)" SelectCommand="SELECT * FROM [學生選修成績表]" UpdateCommand="UPDATE [學生選修成績表] SET [姓名] = ?, [選修課程] = ?, [成績] = ? WHERE [學號] = ?">
                                <DeleteParameters>
                                    <asp:Parameter Name="學號" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="textbox_insertNumber" Name="學號" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="textbox_insertName" Name="姓名" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="textbox_insertCourse" Name="選修課程" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="textbox_insertScore" Name="成績" PropertyName="Text" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="姓名" Type="String" />
                                    <asp:Parameter Name="選修課程" Type="String" />
                                    <asp:Parameter Name="成績" Type="Int32" />
                                    <asp:Parameter Name="學號" Type="String" />
                                </UpdateParameters>
                            </asp:AccessDataSource>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="學號" DataSourceID="accessDataSource" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
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
                        </asp:Panel>
                    </td>
                    <td>
                        <asp:Panel ID="Panel3" runat="server">
                            <table class="auto-style1">
                                <tr>
                                    <td>學&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;號：</td>
                                    <td>
                                        <asp:TextBox ID="textbox_insertNumber" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*學號必填" ControlToValidate="textbox_insertNumber"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
                                    <td>
                                        <asp:TextBox ID="textbox_insertName" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*姓名必填" ControlToValidate="textbox_insertName"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td>選修課程：</td>
                                    <td>
                                        <asp:TextBox ID="textbox_insertCourse" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*選修課程必填" ControlToValidate="textbox_insertCourse"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td>成&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;績：</td>
                                    <td>
                                        <asp:TextBox ID="textbox_insertScore" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*成績超出範圍" ControlToValidate="textbox_insertScore" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="btSubmit" runat="server" Text="確認新增" OnClick="btSubmit_Click" /></td>
                                    <td>
                                        <asp:Button ID="btCancel" runat="server" Text="取消" OnClick="btCancel_Click" /></td>

                                </tr>

                            </table>

                        </asp:Panel>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
