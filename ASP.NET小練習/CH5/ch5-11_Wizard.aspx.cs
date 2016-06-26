using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch5_11 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void textbox_inputAccount_TextChanged(object sender, EventArgs e)
    {
        if (textbox_inputAccount.Text == "KI264")
        {
            label_isUsed.Text = "此帳號已被使用";
        }
        else
        {
            label_isUsed.Text = "此帳號可使用";
        }
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        string password=textbox_inputPassword.Text;
        label_showAccountInfo.Text =
            "學號：" + textbox_inputNumber.Text + "<br/>" +
            "姓名：" + textbox_inputName.Text + "<br/>" +
            "課程：" + DropDownList1.SelectedItem.Value + "<br/>" +
            "帳號：" + textbox_inputAccount.Text + "<br/>" +
            "密碼：" + password + "<br/>";
    }

   
}