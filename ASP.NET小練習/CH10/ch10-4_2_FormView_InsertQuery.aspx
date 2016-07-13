<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch10-4_2_FormView_InsertQuery.aspx.cs" Inherits="ch10_4_2_FormView_InsertQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="accessDataSource" runat="server" DataFile="~/App_Data/MyDatabase.mdb" DeleteCommand="DELETE FROM [學生成績表] WHERE [序號] = ?" InsertCommand="INSERT INTO [學生成績表] ([學號], [姓名], [性別], [資料庫成績], [系統分析成績], [程式設計成績], [計算機概論成績]) VALUES (?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [學生成績表]" UpdateCommand="UPDATE [學生成績表] SET [學號] = ?, [姓名] = ?, [性別] = ?, [資料庫成績] = ?, [系統分析成績] = ?, [程式設計成績] = ?, [計算機概論成績] = ? WHERE [序號] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="序號" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="學號" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性別" Type="String" />
                    <asp:Parameter Name="資料庫成績" Type="Int32" />
                    <asp:Parameter Name="系統分析成績" Type="Int32" />
                    <asp:Parameter Name="程式設計成績" Type="Int32" />
                    <asp:Parameter Name="計算機概論成績" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="學號" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性別" Type="String" />
                    <asp:Parameter Name="資料庫成績" Type="Int32" />
                    <asp:Parameter Name="系統分析成績" Type="Int32" />
                    <asp:Parameter Name="程式設計成績" Type="Int32" />
                    <asp:Parameter Name="計算機概論成績" Type="Int32" />
                    <asp:Parameter Name="序號" Type="Int32" />
                </UpdateParameters>
            </asp:AccessDataSource>
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="序號" DataSourceID="accessDataSource" ForeColor="#333333">
                <EditItemTemplate>
                    序號:
                <asp:Label ID="序號Label1" runat="server" Text='<%# Eval("序號") %>' />
                    <br />
                    學號:
                <asp:TextBox ID="學號TextBox" runat="server" Text='<%# Bind("學號") %>' />
                    <br />
                    姓名:
                <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                    <br />
                    性別:
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("性別") %>'>
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    資料庫成績:
                <asp:TextBox ID="資料庫成績TextBox" runat="server" Text='<%# Bind("資料庫成績") %>' />
                    <br />
                    系統分析成績:
                <asp:TextBox ID="系統分析成績TextBox" runat="server" Text='<%# Bind("系統分析成績") %>' />
                    <br />
                    程式設計成績:
                <asp:TextBox ID="程式設計成績TextBox" runat="server" Text='<%# Bind("程式設計成績") %>' />
                    <br />
                    計算機概論成績:
                <asp:TextBox ID="計算機概論成績TextBox" runat="server" Text='<%# Bind("計算機概論成績") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    學號:
                <asp:TextBox ID="學號TextBox" runat="server" Text='<%# Bind("學號") %>' />
                    <br />
                    姓名:
                <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                    <br />
                    性別:
                <asp:TextBox ID="性別TextBox" runat="server" Text='<%# Bind("性別") %>' />
                    <br />
                    資料庫成績:
                <asp:TextBox ID="資料庫成績TextBox" runat="server" Text='<%# Bind("資料庫成績") %>' />
                    <br />
                    系統分析成績:
                <asp:TextBox ID="系統分析成績TextBox" runat="server" Text='<%# Bind("系統分析成績") %>' />
                    <br />
                    程式設計成績:
                <asp:TextBox ID="程式設計成績TextBox" runat="server" Text='<%# Bind("程式設計成績") %>' />
                    <br />
                    計算機概論成績:
                <asp:TextBox ID="計算機概論成績TextBox" runat="server" Text='<%# Bind("計算機概論成績") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    序號:
                <asp:Label ID="序號Label" runat="server" Text='<%# Eval("序號") %>' />

                    學號:
                <asp:Label ID="學號Label" runat="server" Text='<%# Bind("學號") %>' />
                    <br />
                    姓名:
                <asp:Label ID="姓名Label" runat="server" Text='<%# Bind("姓名") %>' />

                    性別:
                <asp:Label ID="性別Label" runat="server" Text='<%# Bind("性別") %>' />
                    <br />
                    <table>
                        <tr>
                            <td bgcolor="Yellow" >成績單</td>
                        </tr>
                        <tr>
                            <td>資料庫成績:
                <asp:Label ID="資料庫成績Label" runat="server" Text='<%# Bind("資料庫成績") %>' /></td>
                            
                        </tr>
                        <tr>
                            <td>系統分析成績:
                <asp:Label ID="系統分析成績Label" runat="server" Text='<%# Bind("系統分析成績") %>' /></td>
                            
                        </tr>
                        <tr>
                            <td>程式設計成績:
                <asp:Label ID="程式設計成績Label" runat="server" Text='<%# Bind("程式設計成績") %>' /></td>
                            
                        </tr>
                        <tr>
                            <td>計算機概論成績:
                <asp:Label ID="計算機概論成績Label" runat="server" Text='<%# Bind("計算機概論成績") %>' /></td>
                         
                        </tr>
                    </table>
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
                </ItemTemplate>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>
        </div>
    </form>
</body>
</html>
