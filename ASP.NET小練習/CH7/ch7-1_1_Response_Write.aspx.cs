using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*
  * Response.Write
  * 
  * 功能：輸出資訊到瀏覽器
  * 語法：Response.Write(字串或變數資料)
  */


public partial class ch7_1_1_Response_Write : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("字串");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write(DateTime.Now.ToString());
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write("現在時間是：" + DateTime.Now.ToString());
    }
}