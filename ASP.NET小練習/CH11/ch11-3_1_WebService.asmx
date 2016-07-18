<%@ WebService Language="C#" Class="ch11_3_1_WebService" %>

using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允許使用 ASP.NET AJAX 從指令碼呼叫此 Web 服務，請取消註解下列一行。
// [System.Web.Script.Services.ScriptService]
public class ch11_3_1_WebService : System.Web.Services.WebService
{

    [WebMethod]
    public int add(int num1, int num2)
    {
        return num1 + num2;
    }

    [WebMethod]
    public int subtract(int num1, int num2)
    {
        return num1 - num2;
    }

    [WebMethod]
    public int multiple(int num1, int num2)
    {
        return num1 * num2;
    }

    [WebMethod]
    public int divide(int num1, int num2)
    {
        return num1 / num2;
    }
}