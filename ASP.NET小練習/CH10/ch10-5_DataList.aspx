<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch10-5_DataList.aspx.cs" Inherits="ch10_5_DataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="accessDataSource" runat="server" DataFile="~/App_Data/MyDatabase.mdb" SelectCommand="SELECT * FROM [學生成績表]"></asp:AccessDataSource>

            <br />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="序號" DataSourceID="accessDataSource" CellPadding="4" ForeColor="#333333">
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <ItemTemplate>
                    序號:
                <asp:Label ID="序號Label" runat="server" Text='<%# Eval("序號") %>' />
                    <br />
                    學號:
                <asp:Label ID="學號Label" runat="server" Text='<%# Eval("學號") %>' />
                    <br />
                    姓名:
                <asp:Label ID="姓名Label" runat="server" Text='<%# Eval("姓名") %>' />
                    <br />
                    性別:
                <asp:Label ID="性別Label" runat="server" Text='<%# Eval("性別") %>' />
                    <br />
                    資料庫成績:
                <asp:Label ID="資料庫成績Label" runat="server" Text='<%# Eval("資料庫成績") %>' />
                    <br />
                    系統分析成績:
                <asp:Label ID="系統分析成績Label" runat="server" Text='<%# Eval("系統分析成績") %>' />
                    <br />
                    程式設計成績:
                <asp:Label ID="程式設計成績Label" runat="server" Text='<%# Eval("程式設計成績") %>' />
                    <br />
                    計算機概論成績:
                <asp:Label ID="計算機概論成績Label" runat="server" Text='<%# Eval("計算機概論成績") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>

        </div>
    </form>
</body>
</html>
