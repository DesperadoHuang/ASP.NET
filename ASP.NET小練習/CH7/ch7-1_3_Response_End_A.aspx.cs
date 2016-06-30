using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Response.End
//    功能：結束資料的輸出
//    語法：Response.End()
//    說明：此方法會造成IIS不再解析此行敘述後的HTML標示或ASP.NET程式的執行
//    使用時機：(1)程式的除錯與偵測
//                        (2)過濾使用者輸入的資料是否完整

public partial class ch7_1_3_Response_End_A : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        double chi_score = 77.5;
        int eng_score = 90;
        double math_score = 85;
        double total;
        double aver;

        Response.Write("國文：" + chi_score + "<br/>");
        Response.Write("英文：" + eng_score + "<br/>");
        Response.Write("數學：" + math_score + "<br/>");
        //Response.End(); //強迫網頁結束，以下任何敘述都不會被執行
        total = chi_score + eng_score + math_score;
        aver = total / 3;
        Response.Write("總分：" + total + "<br/>");
        Response.Write("平均：" + aver + "<br/>");
    }
}