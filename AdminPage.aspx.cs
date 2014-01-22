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


public partial class AdminPage : System.Web.UI.Page
{
    static string pass;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label2.Text = Session["admin"].ToString();
        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("admin");
        Response.Redirect("AdminLogin.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {
                Response.Redirect("AddorRemoveTeacher.aspx");
            }
            else
                Response.Redirect("AdminLogin.aspx");
        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {
                Response.Redirect("ViewEntries.aspx");
            }
            else
                Response.Redirect("AdminLogin.aspx");
        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
          try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {
                Response.Redirect("Vac_or_Duty.aspx");
            }
            else
                Response.Redirect("AdminLogin.aspx");
        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }        
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {
                Response.Redirect("NewSession.aspx");
            }
            else
                Response.Redirect("AdminLogin.aspx");
        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {
                Response.Redirect("AdminPage.aspx");
            }
            else
                Response.Redirect("AdminLogin.aspx");
        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Label14.Visible = false;
        Label16.Visible = false;
        Label17.Visible = false;
        Label18.Visible = false;
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label19.Text = "Enter Old E-mail Password:";
        Label9.Text = "Enter New E-mail Password:";
        Label15.Text = "Confirm New E-mail Password:";
        Label10.Text = "Want to change E-mail Password ?";
        Panel2.Visible = true;
        pass = "e";
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {
                string s = "";
                string passwd = TextBox1.Text.ToString();
                string confirm = TextBox2.Text.ToString();
                string oldpass = TextBox3.Text.ToString();
                string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
                #region E-Mail
                if (pass.Equals("e"))
                {
                    SqlConnection con1 = new SqlConnection(q);
                    con1.Open();
                    s = " SELECT  mailpass FROM AdminPassword where mailpass = '" + oldpass + "'";
                    SqlCommand cmd1 = new SqlCommand(s, con1);
                    SqlDataReader aread1 = cmd1.ExecuteReader();
                    if (aread1.Read())
                    {
                        if (passwd.Equals(confirm))
                        {
                            SqlConnection con = new SqlConnection(q);
                            con.Open();
                            s = " UPDATE AdminPassword  SET mailpass = '" + passwd + "'";
                            SqlCommand cmd = new SqlCommand(s, con);
                            SqlDataReader aread = cmd.ExecuteReader();
                            Label16.Visible = true;
                            Label16.Text = "E-mail Password Changed.";
                            aread.Close();
                            con.Close();
                            Panel2.Visible = false;
                        }
                        else
                        {
                            Label14.Visible = true;
                            Label14.Text = "Password Mismatch.";
                        }
                    }
                    else
                    {
                        Label14.Visible = true;
                        Label14.Text = "Wrong Old Password.";
                        TextBox3.Text = "";
                    }
                    aread1.Close();
                    con1.Close();
                }
                #endregion E-Mail
                #region Pass1
                else if (pass.Equals("1"))
                {
                    SqlConnection con1 = new SqlConnection(q);
                    con1.Open();
                    s = " SELECT  Password1 FROM AdminPassword where Password1 = '" + oldpass + "'";
                    SqlCommand cmd1 = new SqlCommand(s, con1);
                    SqlDataReader aread1 = cmd1.ExecuteReader();
                    if (aread1.Read())
                    {
                        if (passwd.Equals(confirm))
                        {
                            SqlConnection con = new SqlConnection(q);
                            con.Open();
                            s = " UPDATE AdminPassword  SET Password1 = '" + passwd + "'";
                            SqlCommand cmd = new SqlCommand(s, con);
                            SqlDataReader aread = cmd.ExecuteReader();
                            Label17.Visible = true;
                            Label17.Text = "Password1 Changed.";
                            aread.Close();
                            con.Close();
                            Panel2.Visible = false;
                        }
                        else
                        {
                            Label14.Visible = true;
                            Label14.Text = "Password Mismatch.";
                        }
                    }
                    else
                    {
                        Label14.Visible = true;
                        Label14.Text = "Wrong Old Password.";
                        TextBox3.Text = "";
                    }
                    aread1.Close();
                    con1.Close();
                }
                #endregion Pass1
                #region Pass2
                else if (pass.Equals("2"))
                {
                    SqlConnection con1 = new SqlConnection(q);
                    con1.Open();
                    s = "SELECT Password2 FROM AdminPassword where Password2 = '" + oldpass + "'";
                    SqlCommand cmd1 = new SqlCommand(s, con1);
                    SqlDataReader aread1 = cmd1.ExecuteReader();
                    if (aread1.Read())
                    {
                        if (passwd.Equals(confirm))
                        {
                            SqlConnection con = new SqlConnection(q);
                            con.Open();
                            s = " UPDATE AdminPassword  SET Password2 = '" + passwd + "'";
                            SqlCommand cmd = new SqlCommand(s, con);
                            SqlDataReader aread = cmd.ExecuteReader();
                            Label18.Visible = true;
                            Label18.Text = "Password2 Changed.";
                            aread.Close();
                            con.Close();
                            Panel2.Visible = false;
                        }
                        else
                        {
                            Label14.Visible = true;
                            Label14.Text = "Password Mismatch.";
                        }
                    }
                    else
                    {
                        Label14.Visible = true;
                        Label14.Text = "Wrong Old Password.:" + oldpass + " " + passwd + " " + confirm;
                        TextBox3.Text = "";
                    }
                    aread1.Close();
                    con1.Close();
                }
                #endregion Pass2
            }
            else
                Response.Redirect("AdminLogin.aspx");
        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Label14.Visible = false;
        Label16.Visible = false;
        Label17.Visible = false;
        Label18.Visible = false;

        TextBox1.Text = "";
        TextBox2.Text = "";
        Panel2.Visible = true;
        Label19.Text = "Enter Old Password1:";
        Label9.Text = "Enter New Password1:";
        Label15.Text = "Confirm New Password1:";
        Label10.Text = "Want to change Password1 ?";
        pass = "1";

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Label14.Visible = false;
        Label16.Visible = false;
        Label17.Visible = false;
        Label18.Visible = false;

        TextBox1.Text = "";
        TextBox2.Text = "";
        Panel2.Visible = true;
        Label19.Text = "Enter Old Password2:";
        Label9.Text = "Enter New Password2:";
        Label15.Text = "Confirm New Password2:";
        Label10.Text = "Want to change Password2 ?";
        pass = "2";
    }
}
