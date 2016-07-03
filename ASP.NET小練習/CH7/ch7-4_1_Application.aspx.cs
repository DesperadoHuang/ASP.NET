using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Application物件
//    功能：所有的使用者共同使用
//    語法：Application["變數名稱"]=值

public partial class ch7_4_1_Application : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //文字模式的計數器
        Application["ArriveCounter"] = Convert.ToInt32(Application["ArriveCounter"]) + 1;
        Response.Write("文字模式計數器↓↓↓<br/>");
        Response.Write("本站第 " + Application["ArriveCounter"] + " 個使用者");
    }
}