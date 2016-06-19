using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch3_7_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int[] a = new int[5];
        int i, sum;
        a[0] = 50;
        a[1] = 60;
        a[2] = 70;
        a[3] = 80;
        a[4] = 90;
        sum = a[0] + a[1] + a[2] + a[3] + a[4];
        Label1.Text = "總合為：" + sum;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int[] a = new int[5];
        a[0] = 50;
        a[1] = 60;
        a[2] = 70;
        a[3] = 80;
        a[4] = 90;
        int sum=0;

        for (int i=0;i<a.Length;i++)
        {
            sum += a[i];
        }
        Label1.Text = "總合為："+sum;
    }
}