<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>.: LOGIN :.</title>
    <link rel="SHORTCUT ICON" href="http://www.mnnit.ac.in/oldsite/academics/logo.jpg" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="700px" Style="background-image: url(web2.bmp)"
            Width="987px">
            <table style="width: 919px; height: 400px">
                <tr>
                    <td style="width: 110px; height: 129px">
                    </td>
                    <td style="height: 129px; font-weight: normal; font-size: 24pt; width: 624px; color: white; font-family: Arial;">
                        &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 110px; height: 53px">
                        <table>
                            <tr>
                                <td style="width: 161px; height: 21px">
                                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Arial"
                                        Font-Size="Medium" ForeColor="Navy" NavigateUrl="~/AdminLogin.aspx">Home Page</asp:HyperLink></td>
                            </tr>
                            <tr>
                                <td style="width: 161px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 161px; height: 21px">
                                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Arial"
                                        Font-Size="Medium" ForeColor="Navy" NavigateUrl="http://www.mnnit.ac.in" ToolTip="www.mnnit.ac.in">MNNIT Website</asp:HyperLink></td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td style="height: 53px; width: 624px;">
                        &nbsp;<br />
                        <br />
                        <br />
                        <table style="width: 741px">
                            <tr>
                                <td style="width: 1579px">
                                </td>
                                <td style="width: 742px">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="XX-Large" Font-Underline="True"
                                        ForeColor="Navy" Width="630px">Earned Leaves Management for Teaching Staff </asp:Label></td>
                                <td style="width: 750px">
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table>
                            <tr>
                                <td style="width: 253px">
                                </td>
                                <td style="width: 216px">
                                    <asp:Label ID="Label17" runat="server" Font-Bold="False" Font-Size="X-Large" Font-Underline="True"
                                        ForeColor="Sienna">Administrator's Login</asp:Label></td>
                                <td style="width: 167px">
                                </td>
                            </tr>
                        </table>
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <table style="width: 591px">
                            <tr>
                                <td style="width: 1026px; height: 41px">
                                </td>
                                <td style="width: 281px; height: 41px">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"
                            Text="Password1:" ToolTip="Enter Password1"></asp:Label></td>
                                <td style="width: 292px; height: 41px">
                        <asp:TextBox ID="TextBox2" runat="server" Font-Names="Arial" ForeColor="Sienna" TextMode="Password"
                            Width="145px" ToolTip="Enter Password1"></asp:TextBox></td>
                                <td style="width: 162px; height: 41px">
                                </td>
                                <td style="width: 114px; height: 41px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 1026px; height: 39px">
                                </td>
                                <td style="width: 281px; height: 39px">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"
                            Text="Password2:" ToolTip="Enter Password2"></asp:Label></td>
                                <td style="width: 292px; height: 39px">
                                    <asp:TextBox ID="TextBox3" runat="server" Font-Names="Arial"
                                ForeColor="Sienna" TextMode="Password" Width="145px" ToolTip="Enter Password2"></asp:TextBox></td>
                                <td style="width: 162px; height: 39px">
                                </td>
                                <td style="width: 114px; height: 39px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 1026px; height: 43px">
                                </td>
                                <td style="width: 281px; height: 43px">
                        <asp:Button ID="Button1"
                                    runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Black" OnClick="Button1_Click"
                                    Text="Submit" ToolTip="Click here to Login." /></td>
                                <td style="width: 292px; height: 43px">
                                    <asp:Label ID="Label1" runat="server" Font-Names="Arial" ForeColor="Sienna"
                            Visible="False" Font-Bold="True" Font-Size="Small"></asp:Label></td>
                                <td style="width: 162px; height: 43px">
                                </td>
                                <td style="width: 114px; height: 43px">
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="width: 79px">
                                </td>
                                <td style="width: 405px">
                                </td>
                            </tr>
                        </table>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                        <br />
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
                        &nbsp;<br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
