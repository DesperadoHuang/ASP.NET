using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ch9_Practice_3 : System.Web.UI.Page
{
    const string dbPath = "D:\\ASP.NET\\ASP.NET小練習\\CH9\\App_Data\\MyDatabase.mdb";
    const string source = "Provider=Microsoft.Jet.OLEDB.4.0;" + "Data Source=" + dbPath;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btAdd_Click(object sender, EventArgs e)
    {
        try
        {
            string number = textbox_number.Text.ToString();
            string name = textbox_name.Text.ToString();
            string course = textbox_course.Text.ToString();
            int scroe = Convert.ToInt32(textbox_score.Text.ToString());
            OleDbConnection connection = new OleDbConnection(source);
            connection.Open();
            string addCommand = "INSERT INTO [學生選修成績表] ([學號], [姓名], [選修課程], [成績])" +
                "VALUES (" + number + ", " + name + ", " + course + ", " + scroe + ")";

            OleDbCommand command = new OleDbCommand(addCommand, connection);
            command.ExecuteNonQuery();

            GridView1.DataBind();

            connection.Close();

            Response.Write("資料已新增");

        }
        catch (Exception)
        {
            Response.Write("拋出Exception");
        }


    }

    protected void btClear_Click(object sender, EventArgs e)
    {

    }
}