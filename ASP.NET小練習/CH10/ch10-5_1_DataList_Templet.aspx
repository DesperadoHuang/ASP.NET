<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch10-5_1_DataList_Templet.aspx.cs" Inherits="ch10_5_1_DataList_Templet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="accessDataSource" runat="server" DataFile="~/App_Data/MyDatabase.mdb" SelectCommand="SELECT * FROM [學生成績表]"></asp:AccessDataSource>

            <br />
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="序號" DataSourceID="accessDataSource" ForeColor="#333333">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#E3EAEB" />
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td colspan="2" style="text-align: center" bgcolor="Yellow">學生資料表</td>

                        </tr>
                        <tr>
                            <td>序號:
                <asp:Label ID="序號Label" runat="server" Text='<%# Eval("序號") %>' /></td>
                            <td>學號:
                <asp:Label ID="學號Label" runat="server" Text='<%# Eval("學號") %>' /></td>
                        </tr>
                        <tr>
                            <td>姓名:
                <asp:Label ID="姓名Label" runat="server" Text='<%# Eval("姓名") %>' /></td>
                            <td>性別:
                <asp:Label ID="性別Label" runat="server" Text='<%# Eval("性別") %>' /></td>
                        </tr>
                        <tr>
                            <td bgcolor="Yellow" style="text-align: center" colspan="2">成績單</td>
                        </tr>
                        <tr>
                            <td colspan="2">資料庫成績:
                <asp:Label ID="資料庫成績Label" runat="server" Text='<%# Eval("資料庫成績") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">系統分析成績:
                <asp:Label ID="系統分析成績Label" runat="server" Text='<%# Eval("系統分析成績") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">程式設計成績:
                <asp:Label ID="程式設計成績Label" runat="server" Text='<%# Eval("程式設計成績") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">計算機概論成績:
                <asp:Label ID="計算機概論成績Label" runat="server" Text='<%# Eval("計算機概論成績") %>' />
                            </td>
                        </tr>
                        
                    </table>
                    ================
                </ItemTemplate>
                <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>

        </div>
    </form>
</body>
</html>
