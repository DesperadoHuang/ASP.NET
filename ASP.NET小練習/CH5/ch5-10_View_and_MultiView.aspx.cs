using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch5_10_View_and_MultiView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btSubmit_Click(object sender, EventArgs e)
    {
        if (textbox_inputAccount.Text == "KI264" && textbox_inputPassword.Text == "Aa123456")
        {
            label_userName.Text = textbox_inputAccount.Text;
            MultiView1.ActiveViewIndex = 1;
        }
        else
        {
            Response.Write("帳號或密碼錯誤!!!");
        }
    }

    protected void btSignOut_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
}