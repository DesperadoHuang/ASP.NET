using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ch8_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string dbPath = "C:\\Users\\ki264\\MyPractice\\ASP.NET\\ASP.NET小練習\\CH8\\App_Data\\DBMS.mdb";
        string source = "Provider=Microsoft.Jet.OLEDB.4.0;" + "Data Source=" + dbPath;
        OleDbConnection connection = new OleDbConnection(source);
        connection.Open();

        string sqlCommand = "select * from 學生資料表";

        //建立OleDbDataAdapter物件並連結資料庫
        OleDbDataAdapter dataAdapter = new OleDbDataAdapter(sqlCommand, connection);

        DataSet dataSet = new DataSet();
        dataAdapter.Fill(dataSet, "學生資料表");//使用Fill方法將查詢的資料放到DataSet中
        GridView1.DataSource = dataSet;
        GridView1.DataBind();
        connection.Close();
    }
}