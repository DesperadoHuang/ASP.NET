using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ch8_2_3_use_DataReader : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string dbPath = "D:\\ASP.NET\\ASP.NET小練習\\CH8\\App_Data\\DBMS.mdb";//資料庫路徑
        string source = "Provider=Microsoft.Jet.OLEDB.4.0;" + "Data Source=" + dbPath;//連線參數
        OleDbConnection connection = new OleDbConnection(source);//建立OleDbConnection物件並連線
        connection.Open();//開啟資料庫

        string selectCommand = "select * from 學生資料表";//SQL敘述
        OleDbCommand command = new OleDbCommand(selectCommand, connection);//建立OleDbcommand物件
        OleDbDataReader dataReader = command.ExecuteReader();

        Response.Write("<table border=1 align=center>");
        //顯示資料表欄位的所有資料
        while (dataReader.Read())//Read()，從第一筆資料(Row)開始讀取，有資料true並移到下一筆，無資料false
        {
            Response.Write("<tr align=center>");
            for (int i = 0; i < dataReader.FieldCount; i++)//FidleCount回傳欄位(Column)個數
            {
                Response.Write("<td>" + dataReader.GetValue(i) + "</td>");//GetValue(引數)，取得該筆資料(Row)指定欄位的值
            }
            Response.Write("</tr>");
        }
        Response.Write("</table>");

        connection.Close();//關閉資料庫
    }
}