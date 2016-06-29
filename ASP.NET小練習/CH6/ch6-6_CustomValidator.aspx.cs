using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch6_6_CustomValidator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int inputNumber = int.Parse(args.Value);
        if (inputNumber % 2 == 0)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
            textbox_inputNumber.Text=args.Value+ "為奇數。";
        }
    }

    protected void btSubmit_Click(object sender, EventArgs e)
    {

    }
}
