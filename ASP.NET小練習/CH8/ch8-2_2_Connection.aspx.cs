using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//必須引用
using System.Data.OleDb;//必須引用

//C#與Access資料庫標準連結方式
//    步驟一：引用命名空間
//    步驟二：撰寫Page_Load事件程序(???)
//    步驟三：設定資料庫名稱與路徑
//    步驟四：宣告及建立Connection物件
//    步驟五：使用Open()來開啟資料庫
//    步驟六：使用 Close()來關閉資料庫

public partial class ch8_2_2_connet_with_Access : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bt_1_Click(object sender, EventArgs e)
    {
        //資料庫檔案的路徑
        string dataPath = "C:\\Users\\ki264\\MyPractice\\ASP.NET\\ASP.NET小練習\\CH8\\App_Data\\DBMS.mdb";
        //設定連線參數字串
        string source = "Provider=Microsoft.Jet.OLEDB.4.0;" +
            "Data Source=" + dataPath;
        //建立連線物件並連線
        OleDbConnection connection = new OleDbConnection(source);
        connection.Open();//開啟資料庫
        Response.Write("<h2>ASPH.NET 連線Access測試</h2>");
        Response.Write("<br/>");
        Response.Write("<h2>成功連結Access</h2>");
        connection.Close();//關閉資料庫
    }
}