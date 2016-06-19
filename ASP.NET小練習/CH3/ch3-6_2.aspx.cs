using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch3_6_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bt1OnClick(object sender, EventArgs e)
    {
        int score = 50;
        if (score < 60)
        {
            Response.Write("您必須補考<br/>");
        }
    }

    protected void bt2OnClick(object sender, EventArgs e)
    {
        int score = 50;
        if (score >= 60)
        {
            Response.Write("及格");
        }
        else
        {
            Response.Write("不及格");
        }
    }

    protected void bt3OnClick(object sender, EventArgs e)
    {
        int aver = 50;
        String result;
        if (aver < 60)
        {
            result = "要重修了!!";
        }
        else if (aver >= 60 && aver < 70)
        {
            result = "丙等";
        }
        else if (aver >= 70 && aver < 80)
        {
            result = "乙等";
        }
        else if (aver >= 80 && aver < 90)
        {
            result = "甲等";
        }
        else
        {
            result = "優等";
        }
        Response.Write(result);
    }

    protected void bt4OnClick(object sender, EventArgs e)
    {
        int aver = 60;
        string result;
        switch ((int)aver / 10)
        {
            case 10:
            case 9:
                result = "優等生";
                break;
            case 8:
                result = "甲等生";
                break;
            case 7:
                result = "乙等生";
                break;
            case 6:
                result = "丙等生";
                break;
            default:
                result = "去重修吧";
                break;
        }
        Response.Write(result);
    }
}