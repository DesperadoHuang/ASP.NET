using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch7_4_2_Application : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Application.Lock();//鎖定Application物件
        Application["ArriveCounter"] = Convert.ToInt32(Application["ArriveCounter"]) + 1; //存取Application物件
        Application.UnLock();//解鎖Application物件
        Response.Write("文字模式計數器(lock & unlock)↓↓↓<br/>");
        Response.Write("本站第 " + Application["ArriveCounter"] + " 個使用者");
    }
}