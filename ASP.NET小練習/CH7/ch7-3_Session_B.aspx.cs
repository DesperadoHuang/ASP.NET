using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch7_3_Session_B : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        label_showAccount.Text = Session["account"].ToString();
        label_showPassword.Text = Session["password"].ToString();
    }
}