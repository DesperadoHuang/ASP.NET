using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch9_6_3_GridView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btAscendingOrder_Click(object sender, EventArgs e)
    {
        GridView1.Sort(dropDownList.SelectedValue, SortDirection.Ascending);
    }


    protected void btDescendingSort_Click(object sender, EventArgs e)
    {
        GridView1.Sort(dropDownList.SelectedValue, SortDirection.Descending);
    }
}