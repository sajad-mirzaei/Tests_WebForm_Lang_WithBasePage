<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
</head>
<body>
    <form id="form1" runat="server">
     <table>
        <tr>
            <td >
                <asp:Label ID="Label1" runat="server" Text="Select Language"></asp:Label>
            </td>
            <td>:</td>
            <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Text="English" Value="en-US"></asp:ListItem>
        <asp:ListItem Text="Marathi" Value="mr-IN"></asp:ListItem>
        <asp:ListItem Text="Gujarathi" Value="gu-IN"></asp:ListItem>
        </asp:DropDownList>
    
            </td>
        </tr>
        <tr>
           
            <td colspan="3">
                </td>
        </tr>
        
        <tr>
           
            <td colspan="3" align="center">
            <asp:Button ID="Button1" runat="server" Text="set Language" onclick="Button1_Click" 
                     style="height: 26px" />
                    </td>
        </tr>
        
        <tr>
            
            <td></td>
        </tr>
        
        <tr>
            
            <td >
             <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Sample.aspx">Go to Sample Page</asp:LinkButton>
            </td>
        </tr>
        
    </table>
    </form>
</body>
</html>
