<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch5-11_Wizard.aspx.cs" Inherits="ch5_11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="3" Height="270px" Width="405px" OnFinishButtonClick="Wizard1_FinishButtonClick" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderWidth="1px" Font-Names="Verdana" Font-Size="Medium">
                <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
                <HeaderTemplate>
                    e-Learning學員註冊系統
                </HeaderTemplate>
                <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                <SideBarButtonStyle ForeColor="White" />
                <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
                <WizardSteps>
                    <asp:WizardStep runat="server" StepType="Start" Title="Start">
                        歡迎來到「e-Learning」上線學習之學員註冊系統！
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Step 1" StepType="Step">
                        學員註冊<br />
                        <br />
                        學號：<asp:TextBox ID="textbox_inputNumber" runat="server"></asp:TextBox><br />
                        姓名：<asp:TextBox ID="textbox_inputName" runat="server"></asp:TextBox><br />
                        <br />
                        想閱讀課程名稱：<br />
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="18px" Width="198px">
                            <asp:ListItem>資料庫課程</asp:ListItem>
                            <asp:ListItem>程式設計</asp:ListItem>
                            <asp:ListItem>電子商務</asp:ListItem>
                        </asp:DropDownList>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Step 2" StepType="Step">
                        請輸入學員帳號：<br />
                        <br />
                        <asp:TextBox ID="textbox_inputAccount" runat="server" AutoPostBack="true" OnTextChanged="textbox_inputAccount_TextChanged"></asp:TextBox><asp:Label ID="label_isUsed" runat="server"></asp:Label>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Step" Title="Step 3">
                        學員密碼：<asp:TextBox ID="textbox_inputPassword" runat="server" TextMode="Password"></asp:TextBox><br /><br />
                        再輸一次：<asp:TextBox ID="textbox_inputPasswordAgain" runat="server"  TextMode="Password"></asp:TextBox><br /><br />
                     
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Finish" Title="Finish">
                        輸入資料正確，請按完成鈕，已完成註冊。
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Complete" Title="Complete">
                        恭喜您，註冊成功。<br />
                        您的註冊相關資料如下：<br /><br />
                        <asp:Label ID="label_showAccountInfo" runat="server" ></asp:Label>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
