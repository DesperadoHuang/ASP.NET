using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch7_4_3_Application : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //圖形化計數器

        Application.Lock();
        Application["ArriveCounter"] = Convert.ToInt32(Application["ArriveCounter"]) + 1;
        Application.UnLock();

        Response.Write("圖形化計數器<br/>");
        Response.Write("本站第 " + showCountByImage(Convert.ToInt32(Application["ArriveCounter"])) + " 位使用者");
        //Response.Write("本站第 " +Convert.ToInt32(Application["ArriveCounter"]) + " 位使用者");
    }


   
    private static string showCountByImage(int WebCounter)
    {
        string temp = Convert.ToString(WebCounter);
        string counterImage = "";
        for (int i = 0; i < temp.Length; i++)
        {
            counterImage = counterImage + "<IMG SRC=images/" + temp.Substring(i, 1) + ".bmp>";
        }
        return counterImage;
    }


}