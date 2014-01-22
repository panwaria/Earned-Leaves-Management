<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" Height="609px" Style="background-image: url(web2.bmp)"
            Width="920px">
            <table style="width: 919px; height: 573px">
                <tr>
                    <td style="width: 141px; height: 80px">
                    </td>
                    <td style="height: 80px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 141px; height: 103px">
                    </td>
                    <td style="height: 103px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp;<br />
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Login as:" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"></asp:Label>
                        &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Bold="True" Font-Names="Arial" ForeColor="Sienna">
                            <asp:ListItem>Teaching Staff</asp:ListItem>
                            <asp:ListItem>Administrator</asp:ListItem>
                        </asp:DropDownList>&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click"
                            Text="Button" /><br />
                        &nbsp; &nbsp;
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Password1:" Visible="False"></asp:Label>&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Visible="False" Width="145px"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Password2:" Visible="False"></asp:Label>&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Visible="False" Width="145px"></asp:TextBox><br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Submit" Visible="False" /><br />
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Underline="True" Text="Username:" Visible="False"></asp:Label>
                    &nbsp; &nbsp;<asp:TextBox ID="TextBox5" runat="server" Width="144px" Visible="False"></asp:TextBox> &nbsp; &nbsp;
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Underline="True" Text="Password:" Visible="False"></asp:Label>
                    &nbsp; &nbsp;<asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Width="145px" Visible="False"></asp:TextBox><br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" TabIndex="2" Text="Submit" Visible="False" />
                    &nbsp; &nbsp; &nbsp; &nbsp;<br />
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
