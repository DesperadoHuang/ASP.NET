using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ch8_2_2_connet_with_Access : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bt_1_Click(object sender, EventArgs e)
    {
        string dataPath ="C:\\Users\\ki264\\MyPractice\\ASP.NET\\ASP.NET小練習\\CH8\\App_Data\\DBMS.mdb";
        string source = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + dataPath;
        OleDbConnection connection = new OleDbConnection(source);
        connection.Open();
        Response.Write("<h2>ASPH.NET 連線Access測試</h2>");
        Response.Write("<br/>");
        Response.Write("<h2>成功連結Access</h2>");
        connection.Close();
    }
}