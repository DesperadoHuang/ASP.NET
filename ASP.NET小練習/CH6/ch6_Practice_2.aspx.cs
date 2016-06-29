using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch6_Practice_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RangeValidator1.MaximumValue = DateTime.Now.ToShortDateString();
        RangeValidator1.MinimumValue = new DateTime(1950, 1, 1).ToShortDateString();

        Label1.Text = "(範圍："+ RangeValidator1.MinimumValue + "~" + RangeValidator1.MaximumValue+")";
        
    }
}