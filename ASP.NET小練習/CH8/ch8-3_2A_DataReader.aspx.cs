using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ch8_3_2A_use_DataReader : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string dbPath = "D:\\ASP.NET\\ASP.NET小練習\\CH8\\App_Data\\DBMS.mdb";
        string source = "Provider=Microsoft.Jet.OLEDB.4.0;" + "Data source=" + dbPath;
        OleDbConnection connection = new OleDbConnection(source);

        connection.Open();

        string sqlCommand = "select * from 學生資料表";
        OleDbCommand command = new OleDbCommand(sqlCommand, connection);
        OleDbDataReader reader = command.ExecuteReader();

        Response.Write("<table border=1 align=center>");
        Response.Write("<tr>");

        //顯示資料表的欄位名稱
        for (int i = 0; i < reader.FieldCount; i++)
        {
            Response.Write("<td align=center>" + reader.GetName(i) + "</td>");//GetName(引數)取得欄位名稱
        }
        Response.Write("</tr>");

        //顯示資料表欄位的所有資料
        while (reader.Read())
        {
            Response.Write("<tr align=center>");
            for (int i = 0; i < reader.FieldCount; i++)
            {
                Response.Write("<td align=center>" + reader.GetValue(i) + "</td>");
            }
            Response.Write("</tr>");
        }
        Response.Write("</table>");

        connection.Close();
    }
}