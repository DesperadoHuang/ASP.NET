using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch4_Practice_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void myInputAccoutnOnTextChanged(object sender, EventArgs e)
    {
        label_showAccount.Text = textbox_inputAccount.Text;
    }

    protected void myInputPasswordOnTextChanged(object sender, EventArgs e)
    {
        label_showPassword.Text = textbox_inputPassword.Text;
    }
}