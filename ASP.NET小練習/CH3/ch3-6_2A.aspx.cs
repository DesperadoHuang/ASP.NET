using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch3_6_2A : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        int a;
        a = int.Parse(TextBox1.Text);
        if (a%2==0)
        {
            TextBox2.Text = "偶數";
        }else
        {
            TextBox2.Text = "奇數";
        }
    }
}