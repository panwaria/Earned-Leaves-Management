<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddorRemoveTeacher.aspx.cs" Inherits="AddTeacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Add or Remove Teacher</title>
    <link rel="SHORTCUT ICON" href="http://www.mnnit.ac.in/oldsite/academics/logo.jpg" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="700px" Style="background-image: url(web2.bmp)"
            Width="987px">
            <table style="width: 919px; height: 573px">
                <tr>
                    <td style="width: 141px; height: 118px">
                    </td>
                    <td style="height: 118px; font-weight: normal; font-size: 24pt; color: white; font-family: Arial;">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 141px; height: 90px">
                        <table>
                            <tr>
                                <td style="width: 137px">
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="Navy" ToolTip="Go to Administrator's Home Page.">Home</asp:LinkButton></td>
                            </tr>
                            <tr>
                                <td style="width: 137px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 137px; height: 21px">
                                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="Navy" ToolTip="Logout from this Website.">Logout</asp:LinkButton></td>
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
                    </td>
                    <td style="height: 90px">
                        &nbsp;<br />
                        <table style="width: 741px">
                            <tr>
                                <td style="width: 1579px">
                                </td>
                                <td style="width: 742px">
                                    <asp:Label ID="Label18" runat="server" Font-Bold="False" Font-Size="XX-Large" Font-Underline="True"
                                        ForeColor="Navy" Width="630px">Earned Leaves Management for Teaching Staff </asp:Label></td>
                                <td style="width: 750px">
                                </td>
                            </tr>
                        </table>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Label ID="Label17" runat="server" Font-Bold="False" Font-Size="X-Large" Font-Underline="True"
                            ForeColor="Sienna">Add or Remove Teacher</asp:Label><br />
                        <asp:Label ID="Label1" runat="server" Text="Choose the operation:" Font-Bold="True" Font-Names="Arial" ForeColor="Navy" Font-Underline="True"></asp:Label>
                        <br />
                        <br />
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Font-Bold="True" Font-Names="Arial" ForeColor="Sienna" ToolTip="Select one operation.">
                            <asp:ListItem>Add Teacher</asp:ListItem>
                            <asp:ListItem>Remove Teacher</asp:ListItem>
                        </asp:RadioButtonList><table
                        style="width: 717px">
                            <tr>
                                <td style="width: 134px; height: 25px">
                                </td>
                                <td style="width: 134px; height: 25px">
                                </td>
                                <td style="width: 480px; height: 25px">
                                    &nbsp;<asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Sienna"></asp:Label></td>
                            </tr>
                        <tr>
                            <td style="width: 134px; height: 29px">
                            </td>
                            <td style="width: 134px; height: 29px">
                                <asp:Label ID="Label4" runat="server" Text="TeacherID:" Visible="False" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"></asp:Label><br />
                            </td>
                            <td style="width: 480px; height: 29px"><asp:Panel ID="Panel3" runat="server" Height="25px" Visible="False" Width="300px">
                                <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="170px" Font-Bold="False" Font-Names="Arial" ForeColor="Maroon" ToolTip="Enter Teacher ID."></asp:TextBox></asp:Panel>
                                <asp:Panel ID="Panel4" runat="server" Height="25px" Visible="False" Width="480px">
                                <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource1"
                                    DataTextField="TeacherID" DataValueField="TeacherID" ForeColor="Maroon" Visible="False" Width="116px">
                                </asp:DropDownList>
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Remove Teacher"
                                    Visible="False" Font-Bold="True" Width="140px" />
                                <asp:Label ID="Label14" runat="server" Font-Size="Small" ForeColor="Maroon" Visible="False"></asp:Label></asp:Panel>
                                <asp:Panel ID="Panel2" runat="server" Height="25px" Visible="False" Width="300px">
                                    <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="Maroon" Text="Are you sure ?"></asp:Label>
                                    &nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Yes" Width="40px" Font-Bold="True" Font-Names="Arial" ForeColor="Black" ToolTip="Click if you really want to remove the selected teacher from database." />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="No" Width="35px" Font-Bold="True" ToolTip="Click if you don't want to remove the selected teacher." /></asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 134px; height: 30px">
                            </td>
                            <td style="width: 134px; height: 30px">
                                <asp:Label ID="Label3" runat="server" Text="Name:" Visible="False" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"></asp:Label></td>
                            <td style="width: 480px; height: 30px">
                                <asp:TextBox ID="TextBox2" runat="server" Width="170px" Visible="False" Font-Bold="False" Font-Names="Arial" ForeColor="Maroon" ToolTip="Enter Teacher's Name."></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 134px; height: 30px">
                            </td>
                            <td style="width: 134px; height: 30px">
                                <asp:Label ID="Label2" runat="server" Text="Date of Birth: " Visible="False" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"></asp:Label></td>
                            <td style="width: 480px; height: 30px">
                                <asp:Label
                                    ID="Label6" runat="server" ForeColor="Navy" Text="Day:" Visible="False"></asp:Label><asp:DropDownList
                                        ID="DropDownList1" runat="server" ForeColor="Maroon" Visible="False" Width="52px">
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
                                    </asp:DropDownList>
                                <asp:Label ID="Label7" runat="server" ForeColor="Navy" Text="Month: " Visible="False"></asp:Label>
                                <asp:DropDownList ID="DropDownList2" runat="server" ForeColor="Maroon" Visible="False"
                                    Width="45px">
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
                                </asp:DropDownList>
                                <asp:Label ID="Label8" runat="server" ForeColor="Navy" Text="Year:" Visible="False"></asp:Label>&nbsp;<asp:DropDownList
                                    ID="DropDownList3" runat="server" ForeColor="Maroon" Visible="False">
                                    <asp:ListItem>1940</asp:ListItem>
                                    <asp:ListItem>1941</asp:ListItem>
                                    <asp:ListItem>1942</asp:ListItem>
                                    <asp:ListItem>1943</asp:ListItem>
                                    <asp:ListItem>1944</asp:ListItem>
                                    <asp:ListItem>1945</asp:ListItem>
                                    <asp:ListItem>1946</asp:ListItem>
                                    <asp:ListItem>1947</asp:ListItem>
                                    <asp:ListItem>1948</asp:ListItem>
                                    <asp:ListItem>1949</asp:ListItem>
                                    <asp:ListItem>1950</asp:ListItem>
                                    <asp:ListItem>1951</asp:ListItem>
                                    <asp:ListItem>1952</asp:ListItem>
                                    <asp:ListItem>1953</asp:ListItem>
                                    <asp:ListItem>1954</asp:ListItem>
                                    <asp:ListItem>1955</asp:ListItem>
                                    <asp:ListItem>1956</asp:ListItem>
                                    <asp:ListItem>1957</asp:ListItem>
                                    <asp:ListItem>1958</asp:ListItem>
                                    <asp:ListItem>1959</asp:ListItem>
                                    <asp:ListItem>1960</asp:ListItem>
                                    <asp:ListItem>1961</asp:ListItem>
                                    <asp:ListItem>1962</asp:ListItem>
                                    <asp:ListItem>1963</asp:ListItem>
                                    <asp:ListItem>1964</asp:ListItem>
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
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                            <tr>
                                <td style="width: 134px; height: 29px">
                                </td>
                                <td style="width: 134px; height: 29px">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"
                                        Text="Date of Joining: " Visible="False"></asp:Label></td>
                                <td style="width: 480px; height: 29px">
                                    <asp:Label ID="Label9"
                                            runat="server" ForeColor="Navy" Text="Day:" Visible="False"></asp:Label><asp:DropDownList
                                                ID="DropDownList4" runat="server" ForeColor="Maroon" Visible="False" Width="52px">
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
                                            </asp:DropDownList>
                                    <asp:Label ID="Label10" runat="server" ForeColor="Navy" Text="Month: " Visible="False"></asp:Label>&nbsp;<asp:DropDownList
                                        ID="DropDownList5" runat="server" ForeColor="Maroon" Visible="False" Width="45px">
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
                                    </asp:DropDownList>
                                    <asp:Label ID="Label11" runat="server" ForeColor="Navy" Text="Year:" Visible="False"></asp:Label>&nbsp;<asp:DropDownList
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
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 134px; height: 29px">
                                </td>
                                <td style="width: 134px; height: 29px">
                                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"
                                        Text="Department:" Visible="False"></asp:Label></td>
                                <td style="width: 480px; height: 29px">
                                    <asp:DropDownList ID="DropDownList7" runat="server" Width="140px" Font-Bold="False" ForeColor="Maroon" Visible="False">
                                        <asp:ListItem>AMD</asp:ListItem>
                                        <asp:ListItem>BIOTECH</asp:ListItem>
                                        <asp:ListItem>CED</asp:ListItem>
                                        <asp:ListItem>CHEMISTRY</asp:ListItem>
                                        <asp:ListItem>CSED</asp:ListItem>
                                        <asp:ListItem>ECED</asp:ListItem>
                                        <asp:ListItem>EED</asp:ListItem>
                                        <asp:ListItem>HSS</asp:ListItem>
                                        <asp:ListItem>MATHEMATICS</asp:ListItem>
                                        <asp:ListItem>MED</asp:ListItem>
                                        <asp:ListItem>MED(CHEM)</asp:ListItem>
                                        <asp:ListItem>SMS</asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 134px; height: 29px">
                                </td>
                                <td style="width: 134px; height: 29px">
                                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"
                                        Text="Designation:" Visible="False"></asp:Label></td>
                                <td style="width: 480px; height: 29px">
                                    <asp:DropDownList ID="DropDownList9" runat="server" Width="140px" Font-Bold="False" ForeColor="Maroon" Visible="False">
                                        <asp:ListItem>HOD</asp:ListItem>
                                        <asp:ListItem>Professor</asp:ListItem>
                                        <asp:ListItem>Asst. Professor</asp:ListItem>
                                        <asp:ListItem>Lecturer</asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 134px; height: 30px">
                                </td>
                                <td style="width: 134px; height: 30px">
                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"
                                        Text="E-Mail ID: " Visible="False"></asp:Label></td>
                                <td style="width: 480px; height: 30px">
                                    <asp:TextBox ID="TextBox3" runat="server" Visible="False" Width="170px" ForeColor="Maroon" ToolTip="Enter Teacher's E-Mail ID."></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3"
                                        ErrorMessage="Enter Valid E-Mail ID." Font-Size="Small" ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                            </tr>
                        <tr>
                            <td style="width: 134px; height: 30px">
                            </td>
                            <td style="width: 134px; height: 30px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Teacher" Visible="False" Width="130px" Font-Bold="True" Font-Names="Arial" ForeColor="Black" ToolTip="Click to Add the Teacher to the database." /></td>
                            <td style="width: 480px; height: 30px">
                                <asp:Label ID="Label13" runat="server" Font-Size="Small" ForeColor="Maroon" Visible="False"></asp:Label></td>
                        </tr>
                    </table>
                        &nbsp;
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT [TeacherID] FROM [Master]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        &nbsp;</div>
    </form>
</body>
</html>
