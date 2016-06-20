using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch4_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void imgBt_1_Click(object sender, ImageClickEventArgs e)
    {
        label_1.Text = "按下了ImageButton元件";
    }
}