using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
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
    static string cultureName;

    public static string CultureName
    {
        get { return cultureName; }
        set { cultureName = value; }
    }

    protected override void InitializeCulture()
    {
      

            Thread.CurrentThread.CurrentCulture =
                CultureInfo.CreateSpecificCulture(cultureName);
            Thread.CurrentThread.CurrentUICulture = new
                CultureInfo(cultureName);
       
        base.InitializeCulture();
    }


}
