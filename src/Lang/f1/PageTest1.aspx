<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PageTest1.aspx.cs" Inherits="PageTest1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PageTest1 Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="../Default.aspx">Default</a><hr />
        <h1 style="text-align:center">PageTest1 Page</h1>
        Text to translate: <asp:Label ID="Label2" runat="server" meta:resourcekey="Label1Resource1" />
        <hr />
        <asp:Label ID="Label1" runat="server" Text="Select Language"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="English" Value="en-US"></asp:ListItem>
            <asp:ListItem Text="Persian" Value="fa-IR"></asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="set Language" OnClick="Button1_Click" Style="height: 26px" />
    </form>
</body>
</html>
