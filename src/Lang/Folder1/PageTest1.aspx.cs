using System;
using System.Globalization;
using System.Web.UI;

public partial class PageTest1 : mybasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            DropDownList1.SelectedValue = CultureInfo.CurrentCulture.Name;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var c = DropDownList1.SelectedItem.Value.ToString();
        mybasePage.CultureName = c;
        Page.Response.Redirect(Request.Url.OriginalString);
    }
}