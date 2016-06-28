using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch5_Practice3 : System.Web.UI.Page
{
    string[] tennis = { "請選擇品牌", "Wilson", "Dunlop", "Fischer", "Yonex" };
    string[] tableTennis = { "請選擇品牌", "TSP", "Nittaku", "DONIC", "Butterfly" };
    string[] badminton = { "請選擇品牌", "YONEX", "VICTOR", "FLEET", "KENDELE" };
    string[] nothing = { "請先選擇總類" };

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void dropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (dropDownList1.SelectedItem.Value)
        {
            case "1":
                addItem(tennis);
                break;
            case "2":
                addItem(tableTennis);
                break;
            case "3":
                addItem(badminton);
                break;
            default:
                addItem(nothing);
                label_category.Text = "";
                label_brand.Text = "";
                break;
        }
    }

    protected void dropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        label_category.Text = dropDownList1.SelectedItem.Text;
        label_brand.Text = dropDownList2.SelectedItem.Text;
    }

    private void addItem(string[] category)
    {
        dropDownList2.Items.Clear();

        for (int i = 0; i < category.Length; i++)
        {
            dropDownList2.Items.Add(category[i]);
        }
    }
}