using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch11_3_4_CallWebSevice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int result;
        ServiceReference1.ch11_3_3_ServiceReferenceSoapClient webs = new ServiceReference1.ch11_3_3_ServiceReferenceSoapClient();
        result = webs.add(5, 8);
        Response.Write(result);
    }
}