using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch3_8_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int x = 5;
        int y = 10;
        Response.Write("「傳值呼叫」呼叫前<hr/>");
        Response.Write("x=" + x + "   " + "y=" + y + "<br/>");
        callByValue(5, 10);
        Response.Write("「傳值呼叫」呼叫後<hr/>");
        Response.Write("x=" + x + "   " + "y=" + y + "<br/>");

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int x = 5;
        int y = 10;
        Response.Write("「傳址呼叫」呼叫前<hr/>");
        Response.Write("x=" + x + "   " + "y=" + y + "<br/>");
        callByAddress(ref x, ref y);
        Response.Write("「傳址呼叫」呼叫後<hr/>");
        Response.Write("x=" + x + "   " + "y=" + y + "<br/>");
    }
    static void callByValue(int x, int y)
    {
        x = 20;
        y = 50;
    }

    static void callByAddress(ref int x, ref int y)
    {
        x = 20;
        y = 50;
    }

}