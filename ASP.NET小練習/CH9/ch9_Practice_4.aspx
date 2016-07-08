<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch9_Practice_4.aspx.cs" Inherits="ch9_Practice_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="accessDataSource_city" runat="server" DataFile="~/App_Data/台灣郵遞區號.mdb" SelectCommand="SELECT DISTINCT [城市] FROM [郵遞區號]"></asp:AccessDataSource>
            請選擇城市名稱：<asp:DropDownList ID="dropDownList_city" runat="server" DataSourceID="accessDataSource_city" DataTextField="城市" DataValueField="城市" AutoPostBack="True">
                <asp:ListItem>請選擇縣市</asp:ListItem>
            </asp:DropDownList><br />
            <asp:AccessDataSource ID="accessDataSource_area" runat="server" DataFile="~/App_Data/台灣郵遞區號.mdb" SelectCommand="SELECT DISTINCT [區域] FROM [郵遞區號] WHERE ([城市] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="dropDownList_city" Name="城市" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            請選擇區域名稱：<asp:DropDownList ID="dropDownList_area" runat="server" AutoPostBack="True" DataSourceID="accessDataSource_area" DataTextField="區域" DataValueField="區域">
                <asp:ListItem>請選擇區域</asp:ListItem>
            </asp:DropDownList><br />
            <asp:AccessDataSource ID="accessDataSource_all" runat="server" DataFile="~/App_Data/台灣郵遞區號.mdb" SelectCommand="SELECT * FROM [郵遞區號] WHERE (([城市] = ?) AND ([區域] = ?))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="dropDownList_city" Name="城市" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="dropDownList_area" Name="區域" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="accessDataSource_all" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="郵遞區號" HeaderText="郵遞區號" SortExpression="郵遞區號" />
                    <asp:BoundField DataField="城市" HeaderText="城市" SortExpression="城市" />
                    <asp:BoundField DataField="區域" HeaderText="區域" SortExpression="區域" />
                    <asp:BoundField DataField="路名" HeaderText="路名" SortExpression="路名" />
                    <asp:BoundField DataField="其他" HeaderText="其他" SortExpression="其他" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
