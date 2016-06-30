using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Request.QueryString
//    功能：用來讀取Client端URL後面查詢字串資料
//    語法：Request.QueryString("變數名稱");
//    優點：資料會附加在網址後面，立即傳送，效率較高
//    缺點：資料的長度又限制(2K)
//    注意：如果要傳遞的資料是中文，會出現亂碼。

public partial class ch7_2_1_Request_QueryString : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //QueryString這個方法可以直接取得瀏覽器的URL請求。
        //通常URL請求都是接在 ? 字元符號之後。

        //Session["Teacher_name"] = "Benson_Huang";
        //Response.Write("<a href=ch7-2_1A_Request_QueryString.aspx?name="
        //    + Session["Teacher_name"] + ">我的授課老師" + "</a>");

        string myName = "Wilson";
        Response.Write("<a href=ch7-2_1A_Request_QueryString.aspx?name="
            + myName + ">我的授課老師" + "</a>");
    }
}