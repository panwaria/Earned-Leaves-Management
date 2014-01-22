<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintLimitedEntries.aspx.cs" Inherits="PrintLimitedEntries" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Print this Page</title>
    <link rel="SHORTCUT ICON" href="http://www.mnnit.ac.in/oldsite/academics/logo.jpg" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Go Back</asp:LinkButton>
        <input
            id="Button5" onclick="window.print();" type="button" value="Print" /><br />
        <asp:TextBox
                ID="TextBox2" runat="server" BorderColor="White" BorderStyle="Solid" Font-Bold="True"
                Font-Size="Large" ForeColor="Black" Height="245px" TextMode="MultiLine" Width="915px"></asp:TextBox><br />
        <br />
        <asp:Label
                    ID="Label2" runat="server" Width="789px" Font-Bold="True"></asp:Label><br />
        <br />
        &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"
                        BorderColor="White" BorderStyle="Solid" Font-Size="Medium" ForeColor="Black"
                        Height="154px" TextMode="MultiLine" Visible="False" Width="896px"></asp:TextBox>&nbsp;<br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server" BorderColor="White" BorderStyle="Solid"
            Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="255px" TextMode="MultiLine"
            Width="915px"></asp:TextBox></div>
    </form>
</body>
</html>
