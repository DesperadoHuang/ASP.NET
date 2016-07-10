<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch10-1_2_DropDownList.aspx.cs" Inherits="ch10_1_2_DropDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="accessDataSource1" runat="server" DataFile="~/App_Data/MyDatabase.mdb" SelectCommand="SELECT [姓名], [學號] FROM [學生成績表]"></asp:AccessDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="accessDataSource1" DataTextField="姓名" DataValueField="學號" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>請選取學生學號</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:AccessDataSource ID="accessDataSource2" runat="server" DataFile="~/App_Data/MyDatabase.mdb" SelectCommand="SELECT * FROM [學生成績表] WHERE ([學號] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="學號" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="序號" DataSourceID="accessDataSource2" ForeColor="#333333">
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
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    序號:
                    <asp:TextBox ID="序號TextBox" runat="server" Text='<%# Bind("序號") %>' />
                    <br />
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
                    <br />
                    學號:
                    <asp:Label ID="學號Label" runat="server" Text='<%# Bind("學號") %>' />
                    <br />
                    姓名:
                    <asp:Label ID="姓名Label" runat="server" Text='<%# Bind("姓名") %>' />
                    <br />
                    性別:
                    <asp:Label ID="性別Label" runat="server" Text='<%# Bind("性別") %>' />
                    <br />
                    資料庫成績:
                    <asp:Label ID="資料庫成績Label" runat="server" Text='<%# Bind("資料庫成績") %>' />
                    <br />
                    系統分析成績:
                    <asp:Label ID="系統分析成績Label" runat="server" Text='<%# Bind("系統分析成績") %>' />
                    <br />
                    程式設計成績:
                    <asp:Label ID="程式設計成績Label" runat="server" Text='<%# Bind("程式設計成績") %>' />
                    <br />
                    計算機概論成績:
                    <asp:Label ID="計算機概論成績Label" runat="server" Text='<%# Bind("計算機概論成績") %>' />
                    <br />

                </ItemTemplate>
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:FormView>
        </div>
    </form>
</body>
</html>
