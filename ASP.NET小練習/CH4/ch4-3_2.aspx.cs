using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch4_3_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bt_Submit_Click(object sender, EventArgs e)
    {
        string accunt = textBox_inputAccunt.Text;
        string password = textBox_inputPassword.Text;

        if (accunt.Equals("KI264") && password.Equals("Aa123456"))
        {
            Response.Write("帳號密碼正確<br/><br/>");
        }else
        {
            Response.Write("帳號密碼不正確<br/><br/>");
        }
    }

    protected void bt_Cancel_Click(object sender, EventArgs e)
    {
        textBox_inputAccunt.Text = "";
        textBox_inputPassword.Text = "";
    }
}