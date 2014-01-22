<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestingForm.aspx.cs" Inherits="TestingForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Applying Css To ASPX Page</title>
    <link href="default.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Button ID='bt1' runat="server" Text="Applying Style" />
    <asp:TextBox ID='txt1' CssClass="TBox" runat="server"></asp:TextBox>
    <asp:TextBox ID='txt2' CssClass="TBox" runat="server"></asp:TextBox>    
    </div>
    </form>

</body>
</html>
