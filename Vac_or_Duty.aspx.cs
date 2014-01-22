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


public partial class Vac_or_Duty : System.Web.UI.Page
{
    static string temp;
    //static string tid;// = 

       
    protected void Page_Load(object sender, EventArgs e)
    {
        //TextBox1.Text = PreviousPage.teacherid.ToString();
        //if (Page.PreviousPage != null)
        //{
        //    TextBox SourceTextBox = (TextBox)Page.PreviousPage.FindControl("TextBox5");
        //    if (SourceTextBox != null)
        //    {
        //        Label4.Text = SourceTextBox.Text;
        //    }
        //}
        
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string q = RadioButtonList1.SelectedItem.ToString();
        Label11.Text = "";
        if (q.Equals("Duty on Vacation"))
        {
            temp = "dov";
            Label2.Visible = true;
            DropDownList8.Visible = true;
            //TextBox4.Visible = true;
                       
             Label1.Visible = true;
             DropDownList1.Visible = true;
             Label3.Visible = true;
             DropDownList2.Visible = true;
             Label5.Visible = true;
             DropDownList3.Visible = true;
             Label7.Visible = true;
             DropDownList4.Visible = true;
             Label8.Visible = true;
             DropDownList5.Visible = true;
             Button1.Visible = true;
             DropDownList6.Visible = true;
             DropDownList7.Visible = true;
             //TextBox2.Visible = true;
             //TextBox3.Visible = true;
             Label4.Visible = true;
             Label6.Visible = true;
             Label9.Visible = true;
             Label10.Visible = true;
             Label3.Text = "Duty From: ";
             Label5.Text = "Duty Upto: ";
             Label12.Text = " Duty on Vacation Period";

        }
        else if (q.Equals("Earned Leave"))
        {
             temp = "el";
             Label2.Visible = true;
             DropDownList8.Visible = true;
             //TextBox4.Visible = true;

             Label1.Visible = false;
             DropDownList1.Visible = false;
             Label3.Visible = true;
             DropDownList2.Visible = true;
             Label5.Visible = true;
             DropDownList3.Visible = true;
             Label7.Visible = true;
             DropDownList4.Visible = true;
             Label8.Visible = true;
             DropDownList5.Visible = true;
             Button1.Visible = true;
             DropDownList6.Visible = true;
             DropDownList7.Visible = true;
             //TextBox2.Visible = true;
             //TextBox3.Visible = true;
             Label4.Visible = true;
             Label6.Visible = true;
             Label9.Visible = true;
             Label10.Visible = true;
             Label3.Text = "Leave From: ";
             Label5.Text = "Leave Upto: ";
             Label12.Text = "Earned Leave Period Applied";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //DateTime d = new DateTime();
        try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {
                #region DutyOnVacation
                if (temp.Equals("dov"))
                {
                    float prev_bal = 0, eldue, sanc, eladd, bal;
                    string tid = DropDownList8.SelectedItem.ToString();// TextBox4.Text.ToString();

                    int df = Int32.Parse(DropDownList2.SelectedItem.ToString());
                    int mf = Int32.Parse(DropDownList3.SelectedItem.ToString());
                    int yf = Int32.Parse(DropDownList6.SelectedItem.ToString());

                    //int yf = Int32.Parse(TextBox2.Text.ToString());

                    int dt = Int32.Parse(DropDownList4.SelectedItem.ToString());
                    int mt = Int32.Parse(DropDownList5.SelectedItem.ToString());
                    int yt = Int32.Parse(DropDownList7.SelectedItem.ToString());
                    //int yt = Int32.Parse(TextBox3.Text.ToString());

                    string temp1 = DropDownList6.SelectedItem.ToString().Remove(0, 2);
                    int val = Int32.Parse(temp1) + 1;
                    string temp2 = DropDownList7.SelectedItem.ToString().Remove(0, 2);
                    int val2 = yt - 1;
                    string vactype;
                    if (DropDownList1.SelectedValue.ToString().Equals("wv"))
                    {
                        if (val <= 9)
                            vactype = "W.V." + "(" + yf.ToString() + "-0" + val.ToString() + ")";
                        //vactype = "Winter Vac" + "(" + yf.ToString() + "-0" + val.ToString() + ")";
                        else
                            vactype = "W.V." + "(" + yf.ToString() + "-" + val.ToString() + ")";
                    }
                    else
                    {
                        vactype = "S.V." + "(" + val2.ToString() + "-" + temp2 + ")";
                    }


                    DateTime date1 = new DateTime(yf, mf, df);
                    DateTime date2 = new DateTime(yt, mt, dt);
                    TimeSpan t = date2 - date1;

                    if (t.TotalDays <= 0 || tid.Equals(""))
                    {
                        Label11.Visible = true;
                        if (tid.Equals(""))
                            Label11.Text = "Please specify the Teacher ID";
                        else if (t.TotalDays <= 0)
                            Label11.Text = "No. of days(duration) cannot be negative or zero.";
                    }
                    else
                    {
                        Label11.Visible = false;

                        double totaldays = t.TotalDays + 1;
                        //TextBox1.Text = t.TotalDays.ToString();

                        string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
                        SqlConnection con = new SqlConnection(q);
                        con.Open();
                        string s = " SELECT Balance FROM " + tid + " WHERE RecordID = (SELECT MAX(RecordID) FROM " + tid + ")";
                        SqlCommand cmd = new SqlCommand(s, con);
                        SqlDataReader aread = cmd.ExecuteReader();
                        if (aread.Read())
                        {
                            prev_bal = float.Parse(aread.GetString(0).ToString());
                            TextBox1.Text = prev_bal.ToString();
                        }
                        con.Close();
                        eldue = prev_bal;
                        eladd = (float)(float.Parse(totaldays.ToString()) / 2.5); // *30 / 60;
                        sanc = 0;
                        bal = eldue + eladd;

                        if (bal > 300)
                        {
                            eladd = 0;
                            bal = 300;
                            Label11.Visible = true;
                            Label11.Text = " Earned Leave Balance cannot be more than 300. Please Check the Previous Entries of '" + tid + "'.";
                            //string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
                            SqlConnection con1 = new SqlConnection(q);
                            con1.Open();
                            
                            string s1 = "INSERT INTO " + tid + "(VacType,DayFrom,MonthFrom,YearFrom,DayTo,MonthTo,YearTo,Days,EL_due,Sanction,EL_Add,Balance) values('" + vactype + "','" + df.ToString() + "','" + mf.ToString() + "','" + yf.ToString() + "','" + dt.ToString() + "','" + mt.ToString() + "','" + yt.ToString() + "','" + totaldays.ToString() + "','" + eldue.ToString() + "','" + sanc.ToString() + "','" + eladd.ToString() + "','" + bal.ToString() + "')";
                            SqlCommand cmd1 = new SqlCommand(s1, con1);
                            SqlDataReader aread1 = cmd1.ExecuteReader();
                            if (aread1.Read())
                            {
                            }
                            Label11.Visible = true;
                            Label11.Text = "ENTRY SUCCESSFULLY LOADED.";
                            con1.Close();
                        }
                        else
                        {
                            //string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
                            SqlConnection con1 = new SqlConnection(q);
                            con1.Open();
                            
                            string s1 = "INSERT INTO " + tid + "(VacType,DayFrom,MonthFrom,YearFrom,DayTo,MonthTo,YearTo,Days,EL_due,Sanction,EL_Add,Balance) values('" + vactype + "','" + df.ToString() + "','" + mf.ToString() + "','" + yf.ToString() + "','" + dt.ToString() + "','" + mt.ToString() + "','" + yt.ToString() + "','" + totaldays.ToString() + "','" + eldue.ToString() + "','" + sanc.ToString() + "','" + eladd.ToString() + "','" + bal.ToString() + "')";
                            SqlCommand cmd1 = new SqlCommand(s1, con1);
                            SqlDataReader aread1 = cmd1.ExecuteReader();
                            if (aread1.Read())
                            {
                            }
                            Label11.Visible = true;
                            Label11.Text = "Entry Successfully Loaded.";
                            con1.Close();
                        }
                    }

                }
                #endregion DutyOnVacation
                #region Earned Leave
                else
                {
                    float prev_bal = 0, eldue, sanc, eladd, bal;
                    string tid = DropDownList8.SelectedItem.ToString(); //TextBox4.Text.ToString();
                    //string vactype = "Earned Leave";// DropDownList1.SelectedItem.ToString();

                    int df = Int32.Parse(DropDownList2.SelectedItem.ToString());
                    int mf = Int32.Parse(DropDownList3.SelectedItem.ToString());
                    int yf = Int32.Parse(DropDownList6.SelectedItem.ToString());
                    //int yf = Int32.Parse(TextBox2.Text.ToString());

                    int dt = Int32.Parse(DropDownList4.SelectedItem.ToString());
                    int mt = Int32.Parse(DropDownList5.SelectedItem.ToString());
                    int yt = Int32.Parse(DropDownList7.SelectedItem.ToString());
                    //int yt = Int32.Parse(TextBox3.Text.ToString());

                    string temp1 = DropDownList6.SelectedItem.ToString().Remove(0, 2);
                    int val = Int32.Parse(temp1) + 1;
                    string vactype = "E/L app." + "(" + yf.ToString() + "-" + val.ToString() + ")";
                    //string vactype = "E/L applied" + "(" + yf.ToString() + "-" + val.ToString() + ")";


                    DateTime date1 = new DateTime(yf, mf, df);
                    DateTime date2 = new DateTime(yt, mt, dt);
                    TimeSpan t = date2 - date1;

                    if (t.TotalDays <= 0 || tid.Equals(""))
                    {
                        Label11.Visible = true;
                        if (tid.Equals(""))
                            Label11.Text = "Please specify the Teacher ID";
                        else if (t.TotalDays <= 0)
                            Label11.Text = " No. of days(duration) cannot be negative or zero.";
                    }
                    else
                    {
                        Label11.Visible = false;
                        double totaldays = t.TotalDays + 1;
                        //TextBox1.Text = t.TotalDays.ToString();

                        string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
                        SqlConnection con = new SqlConnection(q);
                        con.Open();
                        string s = " SELECT Balance FROM " + tid + " WHERE RecordID = (SELECT MAX(RecordID) FROM " + tid + ")";
                        SqlCommand cmd = new SqlCommand(s, con);
                        SqlDataReader aread = cmd.ExecuteReader();
                        if (aread.Read())
                        {
                            prev_bal = float.Parse(aread.GetString(0).ToString());
                            TextBox1.Text = prev_bal.ToString();
                        }
                        con.Close();
                        /***************************************************/
                        eldue = prev_bal;
                        sanc = float.Parse(totaldays.ToString());
                        eladd = 0;
                        bal = eldue - sanc;
                        /***************************************************/
                        if (bal < 0)
                        {
                            Label11.Visible = true;
                            Label11.Text = " Earned Leave Balance cannot be negative. Please Check the Previous Entries of '" + tid + "'.";
                        }
                        else
                        {
                            //string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
                            SqlConnection con1 = new SqlConnection(q);
                            con1.Open();
                            
                            string s1 = "INSERT INTO " + tid + "(VacType,DayFrom,MonthFrom,YearFrom,DayTo,MonthTo,YearTo,Days,EL_due,Sanction,EL_Add,Balance) values('" + vactype + "','" + df.ToString() + "','" + mf.ToString() + "','" + yf.ToString() + "','" + dt.ToString() + "','" + mt.ToString() + "','" + yt.ToString() + "','" + totaldays.ToString() + "','" + eldue.ToString() + "','" + sanc.ToString() + "','" + eladd.ToString() + "','" + bal.ToString() + "')";
                            SqlCommand cmd1 = new SqlCommand(s1, con1);
                            SqlDataReader aread1 = cmd1.ExecuteReader();
                            if (aread1.Read())
                            {
                            }
                            Label11.Visible = true;
                            Label11.Text = "Entry Successfully Loaded.";
                            con1.Close();
                        }
                    }

                }
                #endregion EarnedLeave
            }
            else
                Response.Redirect("AdminLogin.aspx");
        }
        catch (ArgumentOutOfRangeException ex)
        {
            Label11.Visible = true;
            Label11.Text = "Enter valid 'Dates'.";
        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }

               
        //TextBox1.Text = t.TotalDays.ToString();

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
    protected void LinkButton3_Click(object sender, EventArgs e)
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
}
