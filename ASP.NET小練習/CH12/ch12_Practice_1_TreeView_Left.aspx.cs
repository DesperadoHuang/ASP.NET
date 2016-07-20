using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ch12_Practice_1_TreeView_Left : System.Web.UI.Page
{
    const string dbPath = "C:\\Users\\ki264\\MyPractice\\ASP.NET\\ASP.NET小練習\\CH12\\App_Data\\TreeView.mdb";
    const string source = "Provider=Microsoft.Jet.OLEDB.4.0;"+"Data Source="+dbPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection connection = new OleDbConnection(source);
        connection.Open();
        string command = "select * from TreeView資料表";
        OleDbCommand oleDbCommand = new OleDbCommand(command,connection);
        OleDbDataReader dataReader = oleDbCommand.ExecuteReader();


        connection.Close();
    }
}