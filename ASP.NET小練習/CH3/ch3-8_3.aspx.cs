using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch3_8_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int n = int.Parse(TextBox1.Text);
        Response.Write(myFunction(n));
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int n = int.Parse(TextBox1.Text);
        Response.Write(myFunction2(n));
    }

    private int myFunction2(int n)
    {
        if (n == 0)
        {
            return 1;
        }
        else
        {
            return n * myFunction2(n - 1);
        }
    }

    static int myFunction(int n)
    {
        int total = 0;
        for (int i = 1; i <= 10; i++)
        {
            total += i;
        }
        return total;
    }
}