using System.Threading;
using System.Globalization;

/// <summary>
/// Summary description for mybasePage
/// </summary>
public class mybasePage : System.Web.UI.Page 
{
	public mybasePage()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    static string cultureName = "en-US";

    public static string CultureName
    {
        get { return cultureName; }
        set { cultureName = value; }
    }

    protected override void InitializeCulture()
    {
        var x = CultureInfo.CreateSpecificCulture(cultureName);
        Thread.CurrentThread.CurrentCulture = x;
        Thread.CurrentThread.CurrentUICulture = new CultureInfo(cultureName);
        base.InitializeCulture();
    }
}
