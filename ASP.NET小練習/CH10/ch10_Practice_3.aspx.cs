using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch10_Practice_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSubmit_Click(object sender, EventArgs e)
    {
        accessDataSource.Insert();
    }

    protected void btCancel_Click(object sender, EventArgs e)
    {
        textbox_insertNumber.Text = "";
        textbox_insertName.Text = "";
        textbox_insertCourse.Text = "";
        textbox_insertScore.Text = "";
    }
}