using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch4_5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void textbox_inputValue_TextChanged(object sender, EventArgs e)
    {
        int number = int.Parse(textbox_inputValue.Text);
        if (number % 2 == 0)
        {
            label_result.Text = "偶數";
        }else
        {
            label_result.Text = "奇數";
        }
    }
}