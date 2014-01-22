<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintPage.aspx.cs" Inherits="PrintPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Print this Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Go Back</asp:LinkButton><br />
        <input id="Button5" onclick="window.print();" type="button" value="Print" />
        &nbsp;&nbsp;<br />
        <asp:TextBox ID="TextBox2" runat="server" Height="175px" Width="883px" BorderColor="White" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Black" TextMode="MultiLine"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server"></asp:Label><br />
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" BorderStyle="Solid"
            Font-Size="Medium" ForeColor="Black" Height="526px" TextMode="MultiLine" Visible="False"
            Width="887px"></asp:TextBox></div>
    </form>
</body>
</html>
