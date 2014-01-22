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

public partial class UserLogin : System.Web.UI.Page
{
    //public String teacherid
    //{
    //    get
    //    {
    //        return TextBox5.Text;
    //    }
    //}
    static string sel;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        //string name = TextBox5.Text.ToString();
        //string pwd = TextBox6.Text.ToString();
        //string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
        //SqlConnection con = new SqlConnection(q);
        //con.Open();
        
        //string s = " SELECT * FROM Master WHERE TeacherID ='" + name + "'AND Password = '" + pwd + "'"; 
        //SqlCommand cmd = new SqlCommand(s, con);
        
        //SqlDataReader aread = cmd.ExecuteReader();
        //if (aread.Read()) { TextBox1.Text = "HI"; }

        //con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string name = TextBox5.Text.ToString();
        string pwd = TextBox6.Text.ToString();
        string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(q);
        con.Open();

        string s = " SELECT * FROM Master WHERE TeacherID ='" + name + "'AND Password = '" + pwd + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        
        SqlDataReader aread = cmd.ExecuteReader();
        if (aread.Read()) 
        { 
            TextBox1.Text = "LOGIN SUCCESSFUL";
            Response.Redirect("Vac_or_Duty.aspx");
           
        }
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //sel = DropDownList1.SelectedItem.ToString();
        //TextBox1.Text=sel;
        //if (sel.Equals("Administrator"))
        //{
            
        //    Label9.Visible = false;
        //    Label10.Visible = false;
        //    TextBox5.Visible = false;
        //    TextBox6.Visible = false;
        //    Button3.Visible = false;
        //    Label2.Visible = true;
        //    Label3.Visible = true;
        //    Button3.Visible = true;
        //    TextBox2.Visible = true;
        //    TextBox3.Visible = true;
        //    Response.Redirect("AdminLogin.aspx");
        //}
        //if((sel.Equals("Teaching Staff")))
        //{
            
        //    Label9.Visible = true;
        //    Label10.Visible = true;
        //    TextBox5.Visible = true;
        //    TextBox6.Visible = true;
        //    Button3.Visible = true;
        //    Label2.Visible = false;
        //    Label3.Visible = false;
        //    Button3.Visible = false;
        //    TextBox2.Visible = false;
        //    TextBox3.Visible = false;
        //    Response.Redirect("TeacherLogin.aspx");
        //}
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        sel = DropDownList1.SelectedItem.ToString();
        if (sel.Equals("Administrator"))
        {
            Response.Redirect("AdminLogin.aspx");
        }
        else
        {
            Response.Redirect("TeacherLogin.aspx");
        }
    }
    

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ////Button1.Visible = true;
        //string q = RadioButtonList1.SelectedItem.ToString();
        //if (q.Equals("Administrator"))
        //{
        //    Response.Redirect("AdminLogin.aspx");
        //}
        //else
        //{
        //    Response.Redirect("TeacherLogin.aspx");
        //}
    }
    
}