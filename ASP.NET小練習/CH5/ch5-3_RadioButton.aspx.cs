using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch5_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void rbtMale_CheckedChanged(object sender, EventArgs e)
    {
        if (rbtMale.Checked == true)
        {
            
            Label1.Text = rbtMale.Text;
        }
    }

    protected void rbtFemale_CheckedChanged(object sender, EventArgs e)
    {
        if (rbtFemale.Checked == true)
        {
            Label1.Text = rbtFemale.Text;
        }
    }
}