<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Vac_or_Duty.aspx.cs" Inherits="Vac_or_Duty" %>
<%@ PreviousPageType VirtualPath ="~/UserLogin.aspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Fill Entries</title>
    <link rel="SHORTCUT ICON" href="http://www.mnnit.ac.in/oldsite/academics/logo.jpg" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" Height="700px" Style="background-image: url(web2.bmp)"
            Width="987px">
            <table style="width: 943px; height: 501px">
                <tr>
                    <td style="width: 141px; height: 126px">
                    </td>
                    <td style="height: 126px; font-size: 24pt; color: white; font-family: Arial; width: 791px;">
                        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 141px; height: 98px">
                        <table>
                            <tr>
                                <td style="width: 137px; height: 32px">
                                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Arial"
                                        Font-Size="Medium" ForeColor="Navy" OnClick="LinkButton1_Click" ToolTip="Go to Administrator's Home Page.">Home</asp:LinkButton></td>
                            </tr>
                            <tr>
                                <td style="width: 137px; height: 31px">
                                    &nbsp; &nbsp;
                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Arial"
                                        Font-Size="Medium" ForeColor="Navy" OnClick="LinkButton3_Click" ToolTip="Click to Mail or Download or Print Records of Earned Leaves.">View Entries</asp:LinkButton></td>
                            </tr>
                            <tr>
                                <td style="width: 137px; height: 38px">
                                    &nbsp; &nbsp; &nbsp; &nbsp;
                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Arial"
                                        Font-Size="Medium" ForeColor="Navy" OnClick="LinkButton2_Click" ToolTip="Logout from this Website.">Logout</asp:LinkButton></td>
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
                    </td>
                    <td style="height: 98px; width: 791px;">
                        &nbsp;<br />
                        <br />
                        <table style="width: 741px">
                            <tr>
                                <td style="width: 1579px">
                                </td>
                                <td style="width: 742px">
                                    <asp:Label ID="Label14" runat="server" Font-Bold="False" Font-Size="XX-Large" Font-Underline="True"
                                        ForeColor="Navy" Width="630px">Earned Leaves Management for Teaching Staff </asp:Label></td>
                                <td style="width: 750px">
                                </td>
                            </tr>
                        </table>
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Label ID="Label17" runat="server" Font-Bold="False" Font-Size="X-Large" Font-Underline="True"
                            ForeColor="Sienna">Fill up the Entries</asp:Label><br />
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"
                            Text="Choose the option:" Font-Underline="True"></asp:Label><br />
                        <br />
                        <asp:RadioButtonList
                        ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True" Font-Bold="True" Font-Names="Arial" ForeColor="Sienna" ToolTip="Select one operation">
                        <asp:ListItem>Duty on Vacation</asp:ListItem>
                        <asp:ListItem>Earned Leave</asp:ListItem>
                    </asp:RadioButtonList><table style="width: 651px">
                        <tr>
                            <td style="width: 230px; height: 30px">
                            </td>
                            <td style="width: 230px; height: 30px">
                            </td>
                            <td style="width: 560px; height: 30px">
                                <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Size="Large" Font-Underline="True"
                                    ForeColor="Sienna"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 230px; height: 30px">
                            </td>
                            <td style="width: 230px; height: 30px">
                                <asp:Label ID="Label2" runat="server" Text="TeacherID" Font-Bold="True" Font-Names="Arial" ForeColor="Navy" Visible="False"></asp:Label></td>
                            <td style="width: 560px; height: 30px">
                                <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource1"
                                    DataTextField="TeacherID" DataValueField="TeacherID" ForeColor="Maroon" Visible="False" Width="140px" ToolTip="Select Teacher ID">
                                </asp:DropDownList>
                                <asp:TextBox ID="TextBox4" runat="server" ForeColor="Maroon" Visible="False"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 230px; height: 30px">
                            </td>
                            <td style="width: 230px; height: 30px">
                                <asp:Label ID="Label1" runat="server" Text="Type of Vacation :" Visible="False" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"></asp:Label></td>
                            <td style="width: 560px; height: 30px">
                                <asp:DropDownList ID="DropDownList1" runat="server" Visible="False" ForeColor="Maroon" Width="139px" ToolTip="Select the type of vacation.">
                                    <asp:ListItem Value="sv">Summer Vacation</asp:ListItem>
                                    <asp:ListItem Value="wv">Winter Vacation</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 230px; height: 30px">
                            </td>
                            <td style="width: 230px; height: 30px">
                                <asp:Label ID="Label3" runat="server" Text="Duty from :" Visible="False" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"></asp:Label></td>
                            <td style="width: 560px; height: 30px">
                                <asp:Label ID="Label6" runat="server" Text="Day:" Visible="False" ForeColor="Navy"></asp:Label>
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="52px" Visible="False" ForeColor="Maroon">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>21</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>23</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>26</asp:ListItem>
                                    <asp:ListItem>27</asp:ListItem>
                                    <asp:ListItem>28</asp:ListItem>
                                    <asp:ListItem>29</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>31</asp:ListItem>
                                </asp:DropDownList>&nbsp;<asp:Label ID="Label4" runat="server" Text="Month:" Visible="False" ForeColor="Navy"></asp:Label>
                                <asp:DropDownList ID="DropDownList3" runat="server" Width="45px" Visible="False" ForeColor="Maroon">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                </asp:DropDownList>&nbsp;
                                <asp:Label ID="Label7" runat="server" Text="Year:" Visible="False" ForeColor="Navy"></asp:Label>&nbsp;<asp:DropDownList
                                    ID="DropDownList6" runat="server" ForeColor="Maroon" Visible="False">
                                    <asp:ListItem>1965</asp:ListItem>
                                    <asp:ListItem>1966</asp:ListItem>
                                    <asp:ListItem>1967</asp:ListItem>
                                    <asp:ListItem>1968</asp:ListItem>
                                    <asp:ListItem>1969</asp:ListItem>
                                    <asp:ListItem>1970</asp:ListItem>
                                    <asp:ListItem>1971</asp:ListItem>
                                    <asp:ListItem>1972</asp:ListItem>
                                    <asp:ListItem>1973</asp:ListItem>
                                    <asp:ListItem>1974</asp:ListItem>
                                    <asp:ListItem>1975</asp:ListItem>
                                    <asp:ListItem>1976</asp:ListItem>
                                    <asp:ListItem>1977</asp:ListItem>
                                    <asp:ListItem>1978</asp:ListItem>
                                    <asp:ListItem>1979</asp:ListItem>
                                    <asp:ListItem>1980</asp:ListItem>
                                    <asp:ListItem>1981</asp:ListItem>
                                    <asp:ListItem>1982</asp:ListItem>
                                    <asp:ListItem>1983</asp:ListItem>
                                    <asp:ListItem>1984</asp:ListItem>
                                    <asp:ListItem>1985</asp:ListItem>
                                    <asp:ListItem>1986</asp:ListItem>
                                    <asp:ListItem>1987</asp:ListItem>
                                    <asp:ListItem>1988</asp:ListItem>
                                    <asp:ListItem>1989</asp:ListItem>
                                    <asp:ListItem>1990</asp:ListItem>
                                    <asp:ListItem>1991</asp:ListItem>
                                    <asp:ListItem>1992</asp:ListItem>
                                    <asp:ListItem>1993</asp:ListItem>
                                    <asp:ListItem>1994</asp:ListItem>
                                    <asp:ListItem>1995</asp:ListItem>
                                    <asp:ListItem>1996</asp:ListItem>
                                    <asp:ListItem>1997</asp:ListItem>
                                    <asp:ListItem>1998</asp:ListItem>
                                    <asp:ListItem>1999</asp:ListItem>
                                    <asp:ListItem>2000</asp:ListItem>
                                    <asp:ListItem>2001</asp:ListItem>
                                    <asp:ListItem>2002</asp:ListItem>
                                    <asp:ListItem>2003</asp:ListItem>
                                    <asp:ListItem>2004</asp:ListItem>
                                    <asp:ListItem>2005</asp:ListItem>
                                    <asp:ListItem>2006</asp:ListItem>
                                    <asp:ListItem>2007</asp:ListItem>
                                    <asp:ListItem>2008</asp:ListItem>
                                    <asp:ListItem>2009</asp:ListItem>
                                    <asp:ListItem>2010</asp:ListItem>
                                    <asp:ListItem>2011</asp:ListItem>
                                    <asp:ListItem>2012</asp:ListItem>
                                    <asp:ListItem>2013</asp:ListItem>
                                    <asp:ListItem>2014</asp:ListItem>
                                    <asp:ListItem>2015</asp:ListItem>
                                    <asp:ListItem>2016</asp:ListItem>
                                    <asp:ListItem>2017</asp:ListItem>
                                    <asp:ListItem>2018</asp:ListItem>
                                    <asp:ListItem>2019</asp:ListItem>
                                    <asp:ListItem>2020</asp:ListItem>
                                    <asp:ListItem>2021</asp:ListItem>
                                    <asp:ListItem>2022</asp:ListItem>
                                    <asp:ListItem>2023</asp:ListItem>
                                    <asp:ListItem>2024</asp:ListItem>
                                    <asp:ListItem>2025</asp:ListItem>
                                    <asp:ListItem>2026</asp:ListItem>
                                    <asp:ListItem>2027</asp:ListItem>
                                    <asp:ListItem>2028</asp:ListItem>
                                    <asp:ListItem>2029</asp:ListItem>
                                    <asp:ListItem>2030</asp:ListItem>
                                    <asp:ListItem>2031</asp:ListItem>
                                    <asp:ListItem>2032</asp:ListItem>
                                    <asp:ListItem>2033</asp:ListItem>
                                    <asp:ListItem>2034</asp:ListItem>
                                    <asp:ListItem>2035</asp:ListItem>
                                    <asp:ListItem>2036</asp:ListItem>
                                    <asp:ListItem>2037</asp:ListItem>
                                    <asp:ListItem>2038</asp:ListItem>
                                    <asp:ListItem>2039</asp:ListItem>
                                    <asp:ListItem>2040</asp:ListItem>
                                    <asp:ListItem>2041</asp:ListItem>
                                    <asp:ListItem>2042</asp:ListItem>
                                    <asp:ListItem>2043</asp:ListItem>
                                    <asp:ListItem>2045</asp:ListItem>
                                    <asp:ListItem>2046</asp:ListItem>
                                    <asp:ListItem>2047</asp:ListItem>
                                    <asp:ListItem>2048</asp:ListItem>
                                    <asp:ListItem>2049</asp:ListItem>
                                    <asp:ListItem>2050</asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox ID="TextBox2" runat="server" Width="66px" Visible="False"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 230px; height: 30px">
                            </td>
                            <td style="width: 230px; height: 30px">
                                <asp:Label ID="Label5" runat="server" Text="Duty upto :" Visible="False" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"></asp:Label></td>
                            <td style="width: 560px; height: 30px">
                                <asp:Label ID="Label9" runat="server" Text="Day:" Visible="False" ForeColor="Navy"></asp:Label>
                                <asp:DropDownList ID="DropDownList4" runat="server" Width="52px" Visible="False" ForeColor="Maroon">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>21</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>23</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>26</asp:ListItem>
                                    <asp:ListItem>27</asp:ListItem>
                                    <asp:ListItem>28</asp:ListItem>
                                    <asp:ListItem>29</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>31</asp:ListItem>
                                </asp:DropDownList>&nbsp;<asp:Label ID="Label10" runat="server" Text="Month:" Visible="False" ForeColor="Navy"></asp:Label>
                                <asp:DropDownList ID="DropDownList5" runat="server" Width="43px" Visible="False" ForeColor="Maroon">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                </asp:DropDownList>&nbsp;
                                <asp:Label ID="Label8" runat="server" Text="Year:" Visible="False" ForeColor="Navy"></asp:Label>&nbsp;<asp:DropDownList
                                    ID="DropDownList7" runat="server" ForeColor="Maroon" Visible="False">
                                    <asp:ListItem>1965</asp:ListItem>
                                    <asp:ListItem>1966</asp:ListItem>
                                    <asp:ListItem>1967</asp:ListItem>
                                    <asp:ListItem>1968</asp:ListItem>
                                    <asp:ListItem>1969</asp:ListItem>
                                    <asp:ListItem>1970</asp:ListItem>
                                    <asp:ListItem>1971</asp:ListItem>
                                    <asp:ListItem>1972</asp:ListItem>
                                    <asp:ListItem>1973</asp:ListItem>
                                    <asp:ListItem>1974</asp:ListItem>
                                    <asp:ListItem>1975</asp:ListItem>
                                    <asp:ListItem>1976</asp:ListItem>
                                    <asp:ListItem>1977</asp:ListItem>
                                    <asp:ListItem>1978</asp:ListItem>
                                    <asp:ListItem>1979</asp:ListItem>
                                    <asp:ListItem>1980</asp:ListItem>
                                    <asp:ListItem>1981</asp:ListItem>
                                    <asp:ListItem>1982</asp:ListItem>
                                    <asp:ListItem>1983</asp:ListItem>
                                    <asp:ListItem>1984</asp:ListItem>
                                    <asp:ListItem>1985</asp:ListItem>
                                    <asp:ListItem>1986</asp:ListItem>
                                    <asp:ListItem>1987</asp:ListItem>
                                    <asp:ListItem>1988</asp:ListItem>
                                    <asp:ListItem>1989</asp:ListItem>
                                    <asp:ListItem>1990</asp:ListItem>
                                    <asp:ListItem>1991</asp:ListItem>
                                    <asp:ListItem>1992</asp:ListItem>
                                    <asp:ListItem>1993</asp:ListItem>
                                    <asp:ListItem>1994</asp:ListItem>
                                    <asp:ListItem>1995</asp:ListItem>
                                    <asp:ListItem>1996</asp:ListItem>
                                    <asp:ListItem>1997</asp:ListItem>
                                    <asp:ListItem>1998</asp:ListItem>
                                    <asp:ListItem>1999</asp:ListItem>
                                    <asp:ListItem>2000</asp:ListItem>
                                    <asp:ListItem>2001</asp:ListItem>
                                    <asp:ListItem>2002</asp:ListItem>
                                    <asp:ListItem>2003</asp:ListItem>
                                    <asp:ListItem>2004</asp:ListItem>
                                    <asp:ListItem>2005</asp:ListItem>
                                    <asp:ListItem>2006</asp:ListItem>
                                    <asp:ListItem>2007</asp:ListItem>
                                    <asp:ListItem>2008</asp:ListItem>
                                    <asp:ListItem>2009</asp:ListItem>
                                    <asp:ListItem>2010</asp:ListItem>
                                    <asp:ListItem>2011</asp:ListItem>
                                    <asp:ListItem>2012</asp:ListItem>
                                    <asp:ListItem>2013</asp:ListItem>
                                    <asp:ListItem>2014</asp:ListItem>
                                    <asp:ListItem>2015</asp:ListItem>
                                    <asp:ListItem>2016</asp:ListItem>
                                    <asp:ListItem>2017</asp:ListItem>
                                    <asp:ListItem>2018</asp:ListItem>
                                    <asp:ListItem>2019</asp:ListItem>
                                    <asp:ListItem>2020</asp:ListItem>
                                    <asp:ListItem>2021</asp:ListItem>
                                    <asp:ListItem>2022</asp:ListItem>
                                    <asp:ListItem>2023</asp:ListItem>
                                    <asp:ListItem>2024</asp:ListItem>
                                    <asp:ListItem>2025</asp:ListItem>
                                    <asp:ListItem>2026</asp:ListItem>
                                    <asp:ListItem>2027</asp:ListItem>
                                    <asp:ListItem>2028</asp:ListItem>
                                    <asp:ListItem>2029</asp:ListItem>
                                    <asp:ListItem>2030</asp:ListItem>
                                    <asp:ListItem>2031</asp:ListItem>
                                    <asp:ListItem>2032</asp:ListItem>
                                    <asp:ListItem>2033</asp:ListItem>
                                    <asp:ListItem>2034</asp:ListItem>
                                    <asp:ListItem>2035</asp:ListItem>
                                    <asp:ListItem>2036</asp:ListItem>
                                    <asp:ListItem>2037</asp:ListItem>
                                    <asp:ListItem>2038</asp:ListItem>
                                    <asp:ListItem>2039</asp:ListItem>
                                    <asp:ListItem>2040</asp:ListItem>
                                    <asp:ListItem>2041</asp:ListItem>
                                    <asp:ListItem>2042</asp:ListItem>
                                    <asp:ListItem>2043</asp:ListItem>
                                    <asp:ListItem>2045</asp:ListItem>
                                    <asp:ListItem>2046</asp:ListItem>
                                    <asp:ListItem>2047</asp:ListItem>
                                    <asp:ListItem>2048</asp:ListItem>
                                    <asp:ListItem>2049</asp:ListItem>
                                    <asp:ListItem>2050</asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox ID="TextBox3" runat="server" Width="66px" Visible="False"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 230px; height: 30px">
                            </td>
                            <td style="width: 230px; height: 30px">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Visible="False" Font-Bold="True" ToolTip="Click to submit the data." /></td>
                            <td style="width: 560px; height: 30px">
                        <asp:Label ID="Label11" runat="server" Font-Size="Small" ForeColor="Maroon" Visible="False"></asp:Label></td>
                        </tr>
                    </table>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox><br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT DISTINCT [TeacherID] FROM [Master]"></asp:SqlDataSource>
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
    </form>
</body>
</html>
