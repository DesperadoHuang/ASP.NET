using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch4_Practice_1 : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bt_submit_Click(object sender, EventArgs e)
    {
        label_showAccount.Text = textbox_inputAccount.Text;
        label_showPassword.Text = textbox_inputPassword.Text;
        
    }

    protected void bt_cancel_Click(object sender, EventArgs e)
    {
        textbox_inputAccount.Text = "";
        textbox_inputPassword.Text = "";
        label_showAccount.Text = "";
        label_showPassword.Text = "";
    }
}