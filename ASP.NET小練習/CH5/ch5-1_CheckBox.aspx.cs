using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch5_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSubmit_Click(object sender, EventArgs e)
    {

        string isChecked = "";
        if (CheckBox1.Checked == true)
        {
            isChecked += CheckBox1.Text + "\n";
        }
        if (CheckBox2.Checked == true) ;
        {
            isChecked += CheckBox2.Text + "\n";
        }
        if (CheckBox3.Checked == true)
        {
            isChecked += CheckBox3.Text + "\n";
        }

        TextBox1.Text = isChecked;
    }
}