using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch5_Practice_1 : System.Web.UI.Page
{
    static DateTime startDate;
    static DateTime endDate;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bt_Start_Click(object sender, EventArgs e)
    {
        startDate = calendar1.SelectedDate;
        textbox_StartDate.Text = startDate.ToLongDateString().ToString();

        textbox_ShowMessage.Text = "我的行事曆是：\n" +
            "從：" + textbox_StartDate.Text + "\n" +
            "到：\n" +
            "總天數：\n";
    }


    protected void bt_End_Click(object sender, EventArgs e)
    {
        endDate = calendar1.SelectedDate;

        TimeSpan ts = endDate - startDate;

        textbox_EndDate.Text = endDate.ToLongDateString().ToString();

        textbox_ShowMessage.Text = "我的行事曆是：\n" +
            "從：" + textbox_StartDate.Text + "\n" +
            "到：" + textbox_EndDate.Text + "\n" +
            "總天數：" + ts.Days + "\n";
    }


}