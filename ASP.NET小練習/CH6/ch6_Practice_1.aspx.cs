using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch6_Practice_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSubmit_Click(object sender, EventArgs e)
    {
        if (rfv_name.IsValid && rfv_phone.IsValid)
        {
            label_showName.Text = textbox_inputName.Text;
            label_showPhone.Text = textbox_inputPhone.Text;
        }
    }
}