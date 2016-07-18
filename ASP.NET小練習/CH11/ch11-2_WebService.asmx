<%@ WebService Language="C#" Class="ch11_2_WebService" %>
//==========↑程式語言====↑類別名稱==============

//===↓命名空間===
using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允許使用 ASP.NET AJAX 從指令碼呼叫此 Web 服務，請取消註解下列一行。
// [System.Web.Script.Services.ScriptService]

 //============↓繼承.NET的System.Web.Services.WebService類別
public class ch11_2_WebService  : System.Web.Services.WebService {
    
    //只要前面標有 [WebService] 的方法就會成為Web Service所提供出來的一個方法
    [WebMethod]   
    public string HelloWorld() {
        return "Hello World";
    }
    
}