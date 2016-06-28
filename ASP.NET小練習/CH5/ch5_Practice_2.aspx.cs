using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch5_Practice_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSubmit_Click(object sender, EventArgs e)
    {
        int total = 0;
        string showMessage = "";
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                total += int.Parse(CheckBoxList1.Items[i].Value);
                showMessage += CheckBoxList1.Items[i].Text + "\n";
            }

        }

        TextBox1.Text = showMessage;
        Label1.Text = ""+total;
    }
}