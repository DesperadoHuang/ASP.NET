using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch9_6_7_GridView_ButtonField : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        string studentName = GridView1.Rows[rowIndex].Cells[2].Text;
        int DB_score = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[4].Text);
        int SA_score = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[5].Text);
        int ASP_score = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[6].Text);
        int PC_score = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[7].Text);
        int sum = DB_score + SA_score + ASP_score + PC_score;
        label.Text = studentName + " 同學，總分：" + sum;
    }
}