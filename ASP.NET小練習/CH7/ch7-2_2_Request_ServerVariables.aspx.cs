using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Request.ServerVariables
//    功能：用來擷取Web伺服器的環境變數，這個屬性是唯讀的
//    語法：Request.ServerVariables["變數名稱"];
//    備註：其餘屬性可參考http://readily-notes.blogspot.tw/2011/05/requestservervariables.html

public partial class ch7_2_2_Request_ServerVariables : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("此電腦IP：" + Request.ServerVariables["REMOTE_ADDR"]);//取得此電腦IP (::1 表示自己連自己)
    }
}