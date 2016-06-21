using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch4_Practice_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bt_submit_Click(object sender, EventArgs e)
    {
        label_showName.Text = label_showName.Text + textbox_inputName.Text;
        label_showTitle.Text = label_showTitle.Text + textbox_inputTitle.Text;
        textbox_showMessage.Text = textbox_showMessage.Text + textbox_inputMessage.Text;
    }
}