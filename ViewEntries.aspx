<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewEntries.aspx.cs" Inherits="ViewEntries" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Print/Download/Mail Entries</title>
    <link rel="SHORTCUT ICON" href="http://www.mnnit.ac.in/oldsite/academics/logo.jpg" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="700px" Style="background-image: url(web2.bmp)"
            Width="987px">
            <table style="width: 919px; height: 573px">
                <tr>
                    <td style="width: 141px; height: 125px">
                    </td>
                    <td style="height: 125px; font-weight: normal; font-size: 24pt; color: white; font-family: Arial;">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 141px; height: 98px">
                        <table>
                            <tr>
                                <td style="width: 137px; height: 28px">
                                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Arial"
                                        ForeColor="Navy" OnClick="LinkButton1_Click" ToolTip="Go to Administrator's Home Page.">Home</asp:LinkButton></td>
                            </tr>
                            <tr>
                                <td style="width: 137px; height: 31px;">
                                    &nbsp; &nbsp;
                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Arial"
                                        Font-Size="Medium" ForeColor="Navy" OnClick="LinkButton3_Click" ToolTip="Click to Fill up the Entries for Earned Leaves.">Fill Entries</asp:LinkButton></td>
                            </tr>
                            <tr>
                                <td style="width: 137px; height: 26px;">
                                    &nbsp; &nbsp; &nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Arial"
                                        ForeColor="Navy" OnClick="LinkButton2_Click" ToolTip="Logout from this Website.">Logout</asp:LinkButton></td>
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
                        <br />
                        <table style="width: 741px">
                            <tr>
                                <td style="width: 1579px">
                                </td>
                                <td style="width: 742px">
                                    <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Size="XX-Large" Font-Underline="True"
                                        ForeColor="Navy" Width="630px">Earned Leaves Management for Teaching Staff </asp:Label></td>
                                <td style="width: 750px">
                                </td>
                            </tr>
                        </table>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Size="X-Large" Font-Underline="True"
                            ForeColor="Sienna">Download or Mail Entries</asp:Label><br />
                        <br />
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Arial" Font-Underline="True"
                            ForeColor="Navy" Text="Select Teacher ID and then choose the option:"></asp:Label><br />
                        <br />
                        <table style="width: 691px; height: 170px">
                            <tr>
                                <td style="width: 143px; height: 39px">
                                </td>
                                <td style="width: 155px; height: 39px">
                                    &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"
                                        Text="Teacher ID:"></asp:Label></td>
                                <td style="width: 245px; height: 39px">
                                    <asp:DropDownList
                            ID="DropDownList8" runat="server" DataSourceID="SqlDataSource1" DataTextField="TeacherID"
                            DataValueField="TeacherID" ForeColor="Maroon" Width="140px" ToolTip="Select Teacher ID.">
                        </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 143px; height: 36px">
                                </td>
                                <td style="width: 155px; height: 36px">
                                    &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"
                                        Text="Dowload Entries:"></asp:Label></td>
                                <td style="width: 245px; height: 36px">
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Download Entries" Font-Bold="True" ForeColor="Black" Width="140px" ToolTip="Click to Download Entries on this computer." /></td>
                            </tr>
                            <tr>
                                <td style="width: 143px; height: 33px">
                                </td>
                                <td style="width: 155px; height: 33px">
                                    &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"
                                        Text="Print Entries:"></asp:Label></td>
                                <td style="width: 245px; height: 33px">
                                    <asp:Button ID="Button6" runat="server" Font-Bold="True" OnClick="Button6_Click"
                                        Text="Print Entries" Width="140px" ToolTip="Click to Print the Records on a Hard Copy." /></td>
                            </tr>
                            <tr>
                                <td style="width: 143px; height: 33px">
                                </td>
                                <td style="width: 155px; height: 33px">
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"
                                        Text="Print Limited Entries:"></asp:Label></td>
                                <td style="width: 245px; height: 33px">
                                    <asp:Button ID="Button5" runat="server" Font-Bold="True" OnClick="Button5_Click"
                                        Text="Print Limited Entries" Width="140px" ToolTip="Click to Print the Records on a Hard Copy." /></td>
                            </tr>
                            <tr>
                                <td style="width: 143px; height: 33px">
                                </td>
                                <td style="width: 155px; height: 33px">
                                    &nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"
                                        Text="Mail Entries:"></asp:Label></td>
                                <td style="width: 245px; height: 33px">
                                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Mail Entries" Font-Bold="True" ForeColor="Black" Width="140px" ToolTip="Click to Mail the Records to the respective teacher." /></td>
                            </tr>
                            <tr>
                                <td style="width: 143px; height: 17px">
                                </td>
                                <td style="width: 155px; height: 17px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/button_display.JPG" Height="31px" OnClick="ImageButton1_Click" Width="119px" ToolTip="Click to Display the Entries below." /></td>
                                <td style="width: 245px; height: 17px">
                                    <asp:Panel ID="Panel2" runat="server" Height="25px" Visible="False" Width="240px">
                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Maroon" Text="Are you sure ?"></asp:Label>
                                        &nbsp;
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yes" Font-Bold="True" ForeColor="Black" Width="43px" />
                                        &nbsp;
                                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="No" Font-Bold="True" ForeColor="Black" Width="43px" />
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                        <table style="width: 658px">
                            <tr>
                                <td style="width: 82px; height: 21px;">
                                </td>
                                <td style="width: 214px; height: 21px;">
                        <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="Maroon" Visible="False"></asp:Label></td>
                            </tr>
                        </table>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT [TeacherID] FROM [Master]"></asp:SqlDataSource>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="LinkButton4"
                            runat="server" Font-Size="Small" ForeColor="Maroon" OnClick="LinkButton4_Click"
                            Visible="False">Close [X]</asp:LinkButton>
                        &nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server" ForeColor="Maroon" Visible="False" Height="294px" Width="692px" BorderColor="Navy" BorderStyle="Solid" TextMode="MultiLine" Font-Size="Small"></asp:TextBox><br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp;<br />
                        <br />
                        <br />
                        &nbsp;
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


