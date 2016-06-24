using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch5_9_Panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        panel_Detail.Visible = false;
        panel_Simple.Visible = false;
    }

    protected void btDetail_Click(object sender, EventArgs e)
    {
        panel_Detail.Visible = true;
        panel_Simple.Visible = false;
    }

    protected void btSimple_Click(object sender, EventArgs e)
    {
        panel_Detail.Visible = false;
        panel_Simple.Visible = true;
    }
}