using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ch9_Practice_5 : System.Web.UI.Page
{

    const string dbPath = "D:\\ASP.NET\\ASP.NET小練習\\CH9\\App_Data\\台灣郵遞區號.mdb";
    const string source = "Provider=Microsoft.Jet.OLEDB.4.0;" + "Data Source=" + dbPath;
    const string tableName = "郵遞區號";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btSubmit_Click(object sender, EventArgs e)
    {

        string parameter = TextBox1.Text.ToString();

        
        string sqlCommand =
            "SELECT ID, 郵遞區號, 城市, 區域, 路名, 其他 " +
            "FROM " + tableName + " " +
            "WHERE 其他 LIKE '%" + parameter + "%' " +
            "OR 城市 LIKE '%" + parameter + "%' " +
            "OR 區域 LIKE '%" + parameter + "%' " +
            "OR 路名 LIKE '%" + parameter + "%'";

        OleDbConnection connection = new OleDbConnection(source);
        connection.Open();

        OleDbDataAdapter dataAdapter = new OleDbDataAdapter(sqlCommand, connection);
        DataSet dataSet = new DataSet();
        dataAdapter.Fill(dataSet, tableName);
        gridView.DataSource = dataSet;
        gridView.DataBind();
        connection.Close();


    }
}