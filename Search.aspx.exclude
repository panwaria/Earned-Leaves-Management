<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>e-Project Online DB</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url(back.JPG)">
        <table style="width: 976px; height: 254px">
            <tr>
                <td style="width: 145px; height: 130px">
                    <asp:Image ID="Image1" runat="server" Height="205px" ImageUrl="~/captionit134924I958D31.jpg"
                        Width="198px" /></td>
                <td style="background-image: url(back2.JPG); height: 130px; width: 773px;">
                    &nbsp; 
                    <img src="pile_of_books.gif" style="width: 176px; height: 136px" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Maroon"
                        Text="e-Project Online Database"></asp:Label></td>
            </tr>
            <tr style="font-size: 12pt">
                <td style="background-image: url(back2.JPG); width: 145px; height: 473px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server"
                        Font-Bold="True" Font-Underline="True" ForeColor="Maroon" NavigateUrl="~/Form3.aspx"
                        Width="50px">Home</asp:HyperLink>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;<br />
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="HyperLink2" runat="server"
                        Font-Bold="True" Font-Underline="True" ForeColor="Maroon" NavigateUrl="~/Form1.aspx">Login</asp:HyperLink>&nbsp;<br />
                    <br />
                    <br />
                    &nbsp;
                    <br />
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Underline="True"
                        ForeColor="Maroon" NavigateUrl="~/Form2.aspx">Register</asp:HyperLink>&nbsp;<br />
                    <br />
                    <br />
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Underline="True"
                        ForeColor="Maroon" NavigateUrl="~/Search.aspx">Search</asp:HyperLink>&nbsp;<br />
                    <br />
                    <br />
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="HyperLink5" runat="server"
                        Font-Bold="True" Font-Underline="True" ForeColor="Maroon" NavigateUrl="~/Form4.aspx">About Us</asp:HyperLink>
                    <br />
                    <br />
                </td>
                <td style="height: 473px; width: 773px;">
                    &nbsp;<br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Maroon" Text="Search By:"></asp:Label><br />
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True" Font-Bold="True" ForeColor="Black">
                        <asp:ListItem>Category</asp:ListItem>
                        <asp:ListItem>Author's Name</asp:ListItem>
                    </asp:RadioButtonList>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Choose the Category: "
                        Visible="False"></asp:Label>
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataTextField="category"
                        DataValueField="category" Visible="False" Width="176px" ToolTip="Choose Your Category.">
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Information Technology</asp:ListItem>
                        <asp:ListItem>Mechanics</asp:ListItem>
                        <asp:ListItem>BioTech</asp:ListItem>
                        <asp:ListItem>Neurology</asp:ListItem>
                        <asp:ListItem>Physiotherapy</asp:ListItem>
                        <asp:ListItem>Nanotechnology</asp:ListItem>
                        <asp:ListItem>Electronics</asp:ListItem>
                        <asp:ListItem>Civil </asp:ListItem>
                        <asp:ListItem>Production</asp:ListItem>
                        <asp:ListItem>Chemistry</asp:ListItem>
                        <asp:ListItem>Physics</asp:ListItem>
                        <asp:ListItem>Zoology</asp:ListItem>
                        <asp:ListItem>Biology</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Psychology</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="Enter the Author's Name: "
                        Visible="False"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="176px" OnTextChanged="TextBox1_TextChanged" ToolTip="Enter Author's Name"></asp:TextBox>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                    &nbsp;<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp;
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                        Text="Search the Project" Visible="False" ToolTip="Click to search the Projects" />
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<br />
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:GridView ID="GridView1"
                        runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="Page_Load" Visible="False">
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='Data Source=.\SQLEXPRESS;AttachDbFilename="C:\Documents and Settings\Ron$\Desktop\SE_FINAL\App_Data\Database.mdf";Integrated Security=True;Connect Timeout=30;User Instance=True'
                        SelectCommand="SELECT * FROM [user] WHERE ([category] = @category)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="category" PropertyName="SelectedValue"
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Visible="False" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Height="104px">
                        <Columns>
                            <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                            <asp:BoundField DataField="project" HeaderText="project" SortExpression="project" />
                            <asp:BoundField DataField="filename" HeaderText="filename" SortExpression="filename" />
                            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                            <asp:BoundField DataField="submittime" HeaderText="submittime" SortExpression="submittime" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='Data Source=.\SQLEXPRESS;AttachDbFilename="C:\Documents and Settings\Ron$\Desktop\SE_FINAL\App_Data\Database.mdf";Integrated Security=True;Connect Timeout=30;User Instance=True'
                        SelectCommand="SELECT description.author, [user].project, [user].filename, [user].category, [user].submittime FROM [user] INNER JOIN description ON [user].username = description.username WHERE (description.author = @author)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="author" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp; &nbsp;<br />
                    <br />
                    &nbsp; &nbsp;
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label6" runat="server" Font-Size="Small"
            ForeColor="Maroon" Text="Designed by Students, B.Tech.(6th Sem), Computer Science and Engineering, MNNIT, Allahabad."></asp:Label><br />
    </div>
    </form>
</body>
</html>
