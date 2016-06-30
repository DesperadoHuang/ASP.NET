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

public partial class ch7_1_3_Response_End_B : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userName;
        string password;

        userName = "AAA";
        password = "12345";

        if (userName == "")
        {
            Response.Write("沒有輸入帳號");
            Response.End();
        }
        if (password == "")
        {
            Response.Write("沒有輸入密碼");
            Response.End();
        }

        Response.Write("帳號：" + userName + "<br/>密碼：" + password);
    }
}