<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Defualt Page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="Folder1/PageTest1.aspx">PageTest1 Link</a><hr />
        <h1 style="text-align:center">Default Page</h1>

        Label1: <asp:Label ID="Label1" runat="server" meta:resourcekey="Label1Resource1" /><br />
        Label2: <asp:Label ID="Label2" runat="server" Text="<%$resources:TestLabel1 %>" /><br />
        Label3: <span ID="Label3" runat="server" title="<%$resources:TestLabel1 %>"><%=GetLocalResourceObject("TestLabel1") %></span><br />
        Label4: <span id="Label4" title="<%=GetLocalResourceObject("TestLabel1") %>"><%=GetLocalResourceObject("TestLabel1") %></span><br />
        
        <hr />
        <asp:Label ID="Label50" runat="server" Text="Select Language"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="English" Value="en-US"></asp:ListItem>
            <asp:ListItem Text="Persian" Value="fa-IR"></asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="set Language" OnClick="Button1_Click" Style="height: 26px" />
    </form>
</body>
</html>
