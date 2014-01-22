using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string pwd1 = TextBox2.Text.ToString();
        string pwd2 = TextBox3.Text.ToString();
        string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(q);
        con.Open();
        string s = " SELECT * FROM AdminPassword WHERE Password1 ='" + pwd1 + "'AND Password2 = '" + pwd2 + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader aread = cmd.ExecuteReader();
        if (aread.Read())
        {
            Session.Add("admin","Administrator");
            //TextBox1.Text = "LOGIN SUCCESSFUL";
            Response.Redirect("AdminPage.aspx");

        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Wrong Password1 or Password2";
        }

        con.Close();
    }
}
