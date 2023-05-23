using System;
using System.Globalization;
using System.Security.Policy;
using System.Web;
using System.Web.UI;

public partial class _Default : mybasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //روش های مختلف فراخوانی
        var getLocalResourceObject_In_Static_method = StaticMethod(Page.AppRelativeVirtualPath);
        var GetLocalResourceObject1 = GetLocalResourceObject("TestLabel1").ToString();
        var GetLocalResourceObject2 = ResourceHelper.GetLocalResource("TestLabel1");
        var GetLocalResourceObject3 = HttpContext.GetLocalResourceObject(Page.AppRelativeVirtualPath, "TestLabel1").ToString();
        //var GetLocalResourceObject3 = HttpContext.GetLocalResourceObject("~/Default.aspx", "TestLabel1").ToString(); // برای زمانی که آدرس فایل را داریم
        if (!IsPostBack)
            DropDownList1.SelectedValue = CultureInfo.CurrentCulture.Name;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var c = DropDownList1.SelectedItem.Value.ToString();
        mybasePage.CultureName = c;
        Page.Response.Redirect(Request.Url.OriginalString);
    }
    public static string StaticMethod(string appRelativeVirtualPath)
    {
        return HttpContext.GetLocalResourceObject(appRelativeVirtualPath, "TestLabel1").ToString();
        //return HttpContext.GetLocalResourceObject("~/Default.aspx", "TestLabel1").ToString(); // برای زمانی که آدرس فایل را داریم
    }
}

public static class ResourceHelper
{
    public static string GetLocalResource(string resourceKey)
    {
        return HttpContext.GetLocalResourceObject("~/Default.aspx", resourceKey).ToString();
    }
}