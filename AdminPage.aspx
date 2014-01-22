<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Admin's Page</title>
    <link rel="SHORTCUT ICON" href="http://www.mnnit.ac.in/oldsite/academics/logo.jpg" type="image/x-icon" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="700px" Style="background-image: url(web2.bmp)"
            Width="987px">
            <table style="width: 920px; height: 335px">
                <tr>
                    <td style="width: 141px; height: 125px">
                    </td>
                    <td style="height: 125px; font-weight: normal; font-size: 24pt; color: white; font-family: Arial;">
                        &nbsp; &nbsp; &nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 141px; height: 98px">
                        <br />
                        <br />
                        <br />
                        <br />
                        <table>
                            <tr>
                                <td style="width: 137px; height: 31px;">
                                    &nbsp; &nbsp; &nbsp;
                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Arial"
                                        Font-Size="Medium" ForeColor="Navy" OnClick="LinkButton2_Click" ToolTip="Go to Administrator's Home Page.">Home</asp:LinkButton></td>
                            </tr>
                            <tr>
                                <td style="width: 137px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 137px; height: 29px">
                                    &nbsp; &nbsp; &nbsp;
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="Navy" ToolTip="Logout from this Website.">Logout</asp:LinkButton></td>
                            </tr>
                        </table>
                        <br />
                        <asp:HyperLink ID="HyperLink4" runat="server" Visible="False">[HyperLink4]</asp:HyperLink><br />
                        <asp:HyperLink ID="HyperLink5" runat="server" Visible="False">HyperLink</asp:HyperLink><br />
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
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td style="height: 98px">
                        &nbsp;<br />
                        <table style="width: 741px">
                            <tr>
                                <td style="width: 1579px">
                                </td>
                                <td style="width: 742px">
                                    <asp:Label ID="Label20" runat="server" Font-Bold="False" Font-Size="XX-Large" Font-Underline="True"
                                        ForeColor="Navy" Width="630px">Earned Leaves Management for Teaching Staff </asp:Label></td>
                                <td style="width: 750px">
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="width: 186px">
                                </td>
                                <td style="width: 273px">
                        <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Size="X-Large" Font-Underline="True"
                            ForeColor="Sienna">Administrator's Home Page</asp:Label></td>
                                <td style="width: 167px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 186px">
                        <asp:Label ID="Label1" runat="server" Text="Welcome  " Font-Bold="False" Font-Names="Arial" Font-Size="Medium" ForeColor="Navy"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="Maroon" Font-Underline="True"></asp:Label></td>
                                <td style="width: 273px">
                                </td>
                                <td style="width: 167px">
                                </td>
                            </tr>
                        </table>
                        <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon"
                            Text="Please click on the button according to the action you want to perform."></asp:Label><br />
                        <table style="width: 695px; height: 156px">
                            <tr>
                                <td style="width: 177px; height: 30px">
                                </td>
                                <td style="width: 179px; height: 30px;">
                                    &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"
                                        ForeColor="Navy" Text="Add/Remove Teacher:"></asp:Label></td>
                                <td style="width: 163px; height: 30px">
                                    <asp:Button ID="Button1" runat="server" Font-Names="Arial" Font-Size="Smaller" ForeColor="Black"
                                        OnClick="Button1_Click" Text="Add/Remove Teacher" Width="180px" Font-Bold="True" ToolTip="Click to Add or Remove any Teacher from database" /></td>
                                <td style="width: 221px; height: 30px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 177px; height: 30px">
                                </td>
                                <td style="width: 179px; height: 30px;">
                                    &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"
                                        ForeColor="Navy" Text="View Entries:"></asp:Label>
                                </td>
                                <td style="width: 163px; height: 30px">
                                    <asp:Button ID="Button2" runat="server" Font-Names="Arial" Font-Size="Smaller" ForeColor="Black"
                                        OnClick="Button2_Click" Text="Mail or Download Entries" Width="180px" Font-Bold="True" ToolTip="Click to Mail or Download or Print Records of Earned Leaves." /></td>
                                <td style="width: 221px; height: 30px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 177px; height: 30px">
                                </td>
                                <td style="width: 179px; height: 30px;">
                                    &nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"
                                        ForeColor="Navy" Text="Fill Entries:"></asp:Label></td>
                                <td style="width: 163px; height: 30px">
                                    <asp:Button ID="Button3" runat="server" Font-Names="Arial" Font-Size="Smaller" ForeColor="Black"
                                        OnClick="Button3_Click" Text="Fill up the Entries" Width="180px" Font-Bold="True" ToolTip="Click to Fill up the Entries for Earned Leaves." /></td>
                                <td style="width: 221px; height: 30px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 177px; height: 30px">
                                </td>
                                <td style="width: 179px; height: 30px;">
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"
                                        ForeColor="Navy" Text="Change E-mail ID Password:" Width="227px"></asp:Label>
                                </td>
                                <td style="width: 163px; height: 30px">
                                    <asp:Button ID="Button5" runat="server" Text="Change Mail Password" Width="180px" OnClick="Button5_Click" Font-Bold="True" ToolTip="Click to Change E-Mail ID Password." /></td>
                                <td style="width: 221px; height: 30px">
                                    <asp:Label ID="Label16" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 177px; height: 30px">
                                </td>
                                <td style="width: 179px; height: 30px">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"
                                        ForeColor="Navy" Text="Change Password1:" Width="227px"></asp:Label></td>
                                <td style="width: 163px; height: 30px">
                                    <asp:Button ID="Button8" runat="server" Font-Bold="True" OnClick="Button8_Click"
                                        Text="Change Password1" Width="180px" ToolTip="Click to Change Login Password1." /></td>
                                <td style="width: 221px; height: 30px">
                                    <asp:Label ID="Label17" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 177px; height: 31px">
                                </td>
                                <td style="width: 179px; height: 31px">
                                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"
                                        ForeColor="Navy" Text="Change Password2:" Width="227px"></asp:Label></td>
                                <td style="width: 163px; height: 31px">
                                    <asp:Button ID="Button9" runat="server" Font-Bold="True" OnClick="Button9_Click"
                                        Text="Change Password2" Width="180px" ToolTip="Click to Change Login Password2." /></td>
                                <td style="width: 221px; height: 31px">
                                    <asp:Label ID="Label18" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label></td>
                            </tr>
                        </table>
                        <asp:Panel ID="Panel2" runat="server" Height="80px" Width="700px" Visible="False">
                            <table style="width: 695px">
                                <tr>
                                    <td style="width: 87px; height: 20px">
                                    </td>
                                    <td style="width: 133px; height: 20px">
                                        <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small"
                                            ForeColor="Maroon" Text="Enter Old E-mail password:" Width="189px"></asp:Label></td>
                                    <td style="width: 240px; height: 20px">
                                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 87px; height: 20px">
                                    </td>
                                    <td style="width: 133px; height: 20px">
                                        <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Maroon" Text="Enter New E-mail password:" Font-Names="Arial" Font-Size="Small" Width="189px"></asp:Label></td>
                                    <td style="width: 240px; height: 20px">
                                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 87px; height: 20px">
                                    </td>
                                    <td style="width: 133px; height: 20px">
                                        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small"
                                            ForeColor="Maroon" Text="Confirm New E-mail password:" Width="201px"></asp:Label></td>
                                    <td style="width: 240px; height: 20px">
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <table style="width: 627px">
                                <tr>
                                    <td style="width: 1222px; height: 20px">
                                    </td>
                                    <td style="width: 299px; height: 20px">
                                        <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Maroon" Text="Want to change E-mail id password ?"
                                            Width="250px" Font-Names="Arial" Font-Size="Small"></asp:Label></td>
                                    <td style="width: 98px; height: 20px">
                                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Change" Width="109px" Font-Bold="True" /></td>
                                    <td style="width: 215px; height: 20px">
                                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Do Not Change"
                                            Width="124px" Font-Bold="True" /></td>
                                </tr>
                                <tr>
                                    <td style="width: 1222px; height: 17px">
                                    </td>
                                    <td style="width: 299px; height: 17px">
                                        <asp:Label ID="Label14" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label></td>
                                    <td style="width: 98px; height: 17px">
                                    </td>
                                    <td style="width: 215px; height: 17px">
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"
                                        ForeColor="Navy" Text="Start New Session" Visible="False"></asp:Label>
                        <asp:Button ID="Button4" runat="server" Font-Names="Arial" Font-Size="Smaller" ForeColor="Black"
                                        OnClick="Button4_Click" Text="Start New Session" Width="180px" Visible="False" /><br />
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
