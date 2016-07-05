using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch9_6_8B_GridView_HyperLinkField : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Stu_Id"] = Request.QueryString["Stu_Id"];
        Response.Write("傳遞的值為：" + Session["Stu_Id"]);
    }
}