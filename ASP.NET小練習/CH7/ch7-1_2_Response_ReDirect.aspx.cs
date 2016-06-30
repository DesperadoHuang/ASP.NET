using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Response.ReDirect
//    功能：將瀏覽器連結到指定的網頁位址，或移轉到同一個目錄下的檔案
//    語法：Response.ReDirect("URL")
//    說明：URL 代表用指定網頁所在的旺站資料夾中的檔案名稱或網站的網址
//    注意：Response.ReDirect方法必須要在資料尚未傳送到用戶端的瀏覽器之前使用。否則會出現ERROR。

public partial class ch7_1_2_Response_ReDirect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "1")
        {
            Response.Redirect("http://www.edamall.com.tw/");
        }
        else if (DropDownList1.SelectedValue == "2")
        {
            Response.Redirect("https://www.google.com.tw");
        }
        else if (DropDownList1.SelectedValue == "3")
        {
            Response.Redirect("https://tw.yahoo.com");
        }
        else if (DropDownList1.SelectedValue == "4")
        {
            Response.Redirect("ch7-1_1_Response_Write.aspx");
        }
    }
}