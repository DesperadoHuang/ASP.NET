using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Session
//    功能：連線時，使用者狀態之保存，每個使用者只會有一個Session物件
//    語法：Session["變數名稱"]=值;

public partial class ch7_3_Session_A : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSubmit_Click(object sender, EventArgs e)
    {
        Session["account"] = textbox_inputAccount.Text;
        Session["password"] = textbox_inputPassword.Text;

        Response.Redirect("ch7-3_Session_B.aspx");
    }
}