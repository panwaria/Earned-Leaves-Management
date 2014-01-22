using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Sql;
//using System.Data;
using System.Data.SqlClient;

public partial class AddTeacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //TextBox1.Text = "";
        //TextBox2.Text = "";
        //TextBox3.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {

                int db = Int32.Parse(DropDownList1.SelectedItem.ToString());
                int mb = Int32.Parse(DropDownList2.SelectedItem.ToString());
                int yb = Int32.Parse(DropDownList3.SelectedItem.ToString());
                DateTime dateb = new DateTime(yb, mb, db);

                int dj = Int32.Parse(DropDownList4.SelectedItem.ToString());
                int mj = Int32.Parse(DropDownList5.SelectedItem.ToString());
                int yj = Int32.Parse(DropDownList6.SelectedItem.ToString());
                DateTime datej = new DateTime(yj, mj, dj);

                TimeSpan t = datej - dateb;
                string desg = DropDownList7.SelectedItem.ToString();
                string dept = DropDownList9.SelectedItem.ToString();

                if (TextBox1.Text.ToString().Equals("") || TextBox2.Text.ToString().Equals("") || TextBox3.Text.ToString().Equals(""))
                {
                    Label14.Visible = false;
                    Label13.Visible = true;
                    Label13.Text = " Fill all the entires. ";
                }
                else if (t.TotalDays <= 0)
                {
                    Label13.Visible = true;
                    Label13.Text = "Enter valid 'Date of Birth' and 'Date of Joining'.";
                }
                #region else
                else
                {
                    string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
                    SqlConnection con = new SqlConnection(q);
                    SqlConnection con1 = new SqlConnection(q);
                    con.Open();
                    con1.Open();
                    string s = "CREATE TABLE " + TextBox1.Text.ToString() + " ( RecordID bigint not null IDENTITY,VacType varchar(50) NOT NULL,DayFrom varchar(10) NOT NULL,MonthFrom varchar(10) NOT NULL,YearFrom varchar(10) NOT NULL,DayTo varchar(10) NOT NULL,MonthTo varchar(10) NOT NULL,YearTo varchar(10) NOT NULL,Days varchar(4) NOT NULL,EL_due varchar(10) NOT NULL ,Sanction varchar(10) NOT NULL,EL_Add varchar(10) NOT NULL,Balance varchar(10) NOT NULL,PRIMARY KEY(RecordID))";
                    //string s1 = "INSERT INTO Master('VacType','DayFrom','MonthFrom','YearFrom','DayTo','MonthTo','YearTo','Days','EL_due','Sanction','EL_Add,'Balance') values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "')";
                    string s1 = "INSERT INTO Master values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + dateb + "','" + datej + "','" + TextBox3.Text.ToString() + "','" + desg + "','" + dept + "')";
                    SqlCommand cmd = new SqlCommand(s, con);
                    SqlCommand cmd1 = new SqlCommand(s1, con1);
                    SqlDataReader aread = cmd.ExecuteReader();
                    SqlDataReader aread1 = cmd1.ExecuteReader();
                    //if (aread.Read()) { TextBox2.Text = "HI"; }
                    con.Close();
                    con1.Close();
                    Label13.Visible = true;
                    Label13.Text = "Teacher ID:'" + TextBox1.Text.ToString() + "' Successfully Added.";
                    //Label4.Visible = false;
                    //Label2.Visible = false;
                    //Label3.Visible = false;
                    //TextBox2.Visible = false;
                    //TextBox3.Visible = false;
                    //TextBox1.Visible = false;
                    //Button1.Visible = false;
                    //Button2.Visible = false;
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }
                #endregion else
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        catch (SqlException ex)
        {
            Label13.Visible = true;
            Label13.Text = "TeacherID: '" + TextBox1.Text.ToString() + "' already present in databse.";
        }
        catch (ArgumentOutOfRangeException ex)
        {
            Label13.Visible = true;
            Label13.Text = "Enter valid 'Date of Birth' or 'Date of Joining'.";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {
                /*if (TextBox1.Text.ToString().Equals(""))
                {
                    Label13.Visible =false ;
                    Label14.Visible = true;
                    Label14.Text = " Enter TeacherID. ";
                }*/
                //#region else
                //else
                {
                    string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
                    SqlConnection con = new SqlConnection(q);
                    SqlConnection con1 = new SqlConnection(q);
                    con.Open();
                    con1.Open();
                    string tid = DropDownList8.SelectedItem.ToString();
                    string s = "DROP TABLE " + tid;
                    string s1 = "DELETE FROM Master WHERE TeacherID = '" + tid + "'";
                    SqlCommand cmd = new SqlCommand(s, con);
                    SqlCommand cmd1 = new SqlCommand(s1, con1);
                    SqlDataReader aread = cmd.ExecuteReader();
                    SqlDataReader aread1 = cmd1.ExecuteReader();
                    if (aread.Read()) { TextBox2.Text = "HI"; }
                    con.Close();
                    con1.Close();
                    //Label4.Visible = false;
                    //Label2.Visible = false;
                    //Label3.Visible = false;
                    //TextBox2.Visible = false;
                    //TextBox3.Visible = false;
                    //TextBox1.Visible = false;
                    //Button1.Visible = false;
                    //Button2.Visible = false;
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    //TextBox3.Text = "";
                    Panel2.Visible = false;
                    Label14.Visible = true;
                    Label14.Text = tid + "'s Entries Successfully Deleted.";
                }
               // #endregion else
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        catch (SqlException ex)
        {
            Label14.Visible = true;
            Label14.Text = "Teacher ID Not Valid.";
        }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sel = RadioButtonList1.SelectedItem.ToString();
        if (sel.Equals("Add Teacher"))
        {
            Panel4.Visible = false;
            Panel3.Visible = true;
            Label16.Text = "Add Teacher";
            Label12.Visible = true;
            TextBox3.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            Label10.Visible = true;
            Label11.Visible = true;
            Label19.Visible = true;
            Label20.Visible = true;
            DropDownList1.Visible = true;
            DropDownList2.Visible = true;
            DropDownList3.Visible = true;
            DropDownList4.Visible = true;
            DropDownList5.Visible = true;
            DropDownList6.Visible = true;
            DropDownList7.Visible = true;
            DropDownList9.Visible = true;

            Label4.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            TextBox2.Visible = true;
            //TextBox3.Visible = true;
            TextBox1.Visible = true;
            Button1.Visible = true;
            Button3.Visible = false;
            Label14.Visible = false;
            DropDownList8.Visible = false;
        }
        else if(sel.Equals("Remove Teacher"))
        {
            Panel4.Visible = true;
            Panel3.Visible = false;
            DropDownList8.Visible = true;
            Label16.Text = "Remove Teacher";
            Label12.Visible = false;
            TextBox3.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            Label19.Visible = false;
            Label20.Visible = false;
            DropDownList1.Visible = false;
            DropDownList2.Visible = false;
            DropDownList3.Visible = false;
            DropDownList4.Visible = false;
            DropDownList5.Visible = false;
            DropDownList6.Visible = false;
            DropDownList7.Visible = false;
            DropDownList9.Visible = false;

            Label4.Visible = true;
            Label2.Visible = false;
            Label3.Visible = false;
            TextBox2.Visible = false;
            //TextBox3.Visible = false;
            TextBox1.Visible = true;;
            Button1.Visible = false;
            Button3.Visible=true;
            Label14.Visible = false;
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
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
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Remove("admin");
        Response.Redirect("AdminLogin.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label14.Visible = false;
        Panel2.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }


}
