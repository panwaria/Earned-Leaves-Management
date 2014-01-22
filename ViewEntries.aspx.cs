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
using System.Data.Sql;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.IO;

public partial class ViewEntries : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Visible = false;
        Panel2.Visible = false;
        try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {
                //GridView1.Visible = true;
                string tid = DropDownList8.SelectedItem.ToString();// TextBox1.Text.ToString();
                string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
                SqlConnection con = new SqlConnection(q);
                con.Open();
                string s = " SELECT * FROM " + tid;
                SqlCommand cmd = new SqlCommand(s, con);
                SqlDataReader aread = cmd.ExecuteReader();
                //TextBox2.Text = "RecordID\tVacType\tDayFrom\tMonthFrom\tYearFrom\tDayTo\tMonthTo\tYearTo\tDays\tEL_due\tSanction\tEL_Add\tBalance\n";

                string fstring;
                #region aread.read
                if (aread.Read())
                {
                    string filePath = "C:\\EarnedLeave\\" + tid + ".txt";
                    //string filePath = "C:\\Documents and Settings\\Prakhar\\Desktop\\temp.text";
                    FileInfo objFileInfo = new FileInfo(filePath);
                    if (objFileInfo.Exists)
                    {
                        objFileInfo.Delete();
                    }
                    StreamWriter writer = new StreamWriter(filePath);

                    string df = aread.GetString(2).ToString();
                    string mf = aread.GetString(3).ToString();
                    string yf = aread.GetString(4).ToString();
                    string date1 = df + "/" + mf + "/" + yf;
                    //DateTime date1 = new DateTime(Int32.Parse(yf), Int32.Parse(mf), Int32.Parse(df));

                    string dt = aread.GetString(5).ToString();
                    string mt = aread.GetString(6).ToString();
                    string yt = aread.GetString(7).ToString();
                    string date2 = dt + "/" + mt + "/" + yt;

                    fstring = String.Format("{0,-23}{1,-13}{2,-13}{3,3}{4,8}{5,9}{6,11}{7,10}", "Duty/EL_Period", "DateFrom", "DateTo", "Total_Pd", "EL_Due", "EL_Sanc", "EL_Earned", "Balance");
                    writer.WriteLine(fstring);
                    writer.WriteLine();
                    fstring = String.Format("{0,-23}{1,-13}{2,-13}{3,4}{4,12}{5,8}{6,8}{7,12}", aread.GetString(1).ToString(), date1.ToString(), date2.ToString(), aread.GetString(8).ToString(), aread.GetString(9).ToString(), aread.GetString(10).ToString(), aread.GetString(11).ToString(), aread.GetString(12).ToString());
                    writer.WriteLine(fstring);
                    writer.Close();

                    Label2.Visible = true;
                    Label2.Text = "The entries have been downloaded to " + filePath;

                    #region hmm..
                    //TextBox2
                    //TextBox2.Text = aread.GetString(1).ToString() + "\t";// +aread.GetString(1).ToString();


                    /* TableRow tr = new TableRow();
               
                     //Table1.Rows.Add(
                     //TextBox1.Text = "LOGIN SUCCESSFUL";

                     //Response.Redirect("TeacherEntries.aspx");
                     //DataTable dt = new DataTable();
                     //DataColumn dc1 = new DataColumn("RecordID",typeof(int));
                     //dt.Columns.Add(dc1);
                     //DataRow dr = dt.NewRow();

                     ////dr["RecordID"] = Int64.Parse(aread.GetString(0));
                     //dt.Rows.Add(dr);*/
                    #endregion hmm..

                    while (aread.Read())
                    {
                        //string filePath = "C:\\EarnedLeave\\" + TextBox1.Text.ToString() + ".txt";
                        //string filePath = "C:\\Documents and Settings\\Prakhar\\Desktop\\temp.text";
                        //FileInfo objFileInfo = new FileInfo(filePath);
                        StreamWriter writer2 = objFileInfo.AppendText();

                        df = aread.GetString(2).ToString();
                        mf = aread.GetString(3).ToString();
                        yf = aread.GetString(4).ToString();
                        date1 = df + "/" + mf + "/" + yf;

                        dt = aread.GetString(5).ToString();
                        mt = aread.GetString(6).ToString();
                        yt = aread.GetString(7).ToString();
                        date2 = dt + "/" + mt + "/" + yt;

                        fstring = String.Format("{0,-23}{1,-13}{2,-13}{3,4}{4,12}{5,8}{6,8}{7,12}", aread.GetString(1).ToString(), date1.ToString(), date2.ToString(), aread.GetString(8).ToString(), aread.GetString(9).ToString(), aread.GetString(10).ToString(), aread.GetString(11).ToString(), aread.GetString(12).ToString());
                        writer2.WriteLine(fstring);

                        writer2.Close();
                    }
                    Panel2.Visible = false;
                   /* string mailid = "";
                    SqlConnection con1 = new SqlConnection(q);
                    con1.Open();
                    string s1 = " SELECT mailid FROM Master where TeacherID = '" + tid + "'";
                    SqlCommand cmd1 = new SqlCommand(s1, con1);
                    SqlDataReader aread1 = cmd1.ExecuteReader();
                    if (aread1.Read())
                    {
                        mailid = aread1.GetString(0).ToString();
                    }
                    aread1.Close();
                    con1.Close();

                    string sendermail = "", senderpass = "";
                    SqlConnection con2 = new SqlConnection(q);
                    con2.Open();
                    string s2 = " SELECT mailid,mailpass FROM AdminPassword";
                    SqlCommand cmd2 = new SqlCommand(s2, con2);
                    SqlDataReader aread2 = cmd2.ExecuteReader();
                    if (aread2.Read())
                    {
                        sendermail = aread2.GetString(0).ToString();
                        senderpass = aread2.GetString(1).ToString();
                    }
                    aread2.Close();
                    con2.Close();

                    NetworkCredential basicAuthenticationInfo = new NetworkCredential("cs054077", senderpass);
                    basicAuthenticationInfo.UserName = sendermail;
                    basicAuthenticationInfo.Password = senderpass;
                    MailMessage message = new MailMessage();
                    message.To.Add(new MailAddress(mailid));
                    message.From = new MailAddress(sendermail);
                    //TextBox1.Text = sender + " " + sendermail + " " + senderpass;
                    message.Subject = "Earned Leave Balance: TeacherID: " + tid + ".";
                    message.Body = "Please download the attachment -- '" + tid + ".txt'\n\nWith regards,\nRegistrar\nMNNIT\nAllahabad";


                    message.Attachments.Add(new Attachment("c:\\EarnedLeave\\" + tid.ToString() + ".txt"));

                    SmtpClient client = new SmtpClient();
                    client.UseDefaultCredentials = false;
                    client.Credentials = basicAuthenticationInfo;
                    client.Send(message);
                    * */
                }
                else
                {
                    Label2.Visible = true;
                    Label2.Text = "No record for Teacher ID: " + tid + ".";// TextBox1.Text.ToString() + ".";
                }
                //writer.Close();

                #endregion aread.read
                con.Close();
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }

        }//try


        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        catch (SqlException ex)
        {
            Label2.Visible = true;
            Label2.Text = "Teacher ID not valid.";
        }
        catch (SmtpException ex)
        {
            Label2.Visible = true;
            Label2.Text = "Network Unreachable.";
        }
        catch (IOException ex)
        {
            Label2.Visible = true;
            Label2.Text = "Please Logout and then try again.";
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Visible = false;
        try
        {
             if (Session["admin"].ToString().Equals("Administrator"))
             {
                //GridView1.Visible = true;
                string tid = DropDownList8.SelectedItem.ToString();// TextBox1.Text.ToString();
                string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
                SqlConnection con = new SqlConnection(q);
                con.Open();
                string s = " SELECT * FROM " + tid;
                SqlCommand cmd = new SqlCommand(s, con);
                SqlDataReader aread = cmd.ExecuteReader();
                //TextBox2.Text = "RecordID\tVacType\tDayFrom\tMonthFrom\tYearFrom\tDayTo\tMonthTo\tYearTo\tDays\tEL_due\tSanction\tEL_Add\tBalance\n";

                string fstring;
                #region aread.read
                if (aread.Read())
                {
                    string filePath = "C:\\EarnedLeave\\" + tid + ".txt";
                    //string filePath = "C:\\Documents and Settings\\Prakhar\\Desktop\\temp.text";
                    FileInfo objFileInfo = new FileInfo(filePath);
                    if (objFileInfo.Exists)
                    {
                        objFileInfo.Delete();
                    }
                    StreamWriter writer = new StreamWriter(filePath);

                    string df = aread.GetString(2).ToString();
                    string mf = aread.GetString(3).ToString();
                    string yf = aread.GetString(4).ToString();
                    string date1 = df + "/" + mf + "/" + yf;
                    //DateTime date1 = new DateTime(Int32.Parse(yf), Int32.Parse(mf), Int32.Parse(df));

                    string dt = aread.GetString(5).ToString();
                    string mt = aread.GetString(6).ToString();
                    string yt = aread.GetString(7).ToString();
                    string date2 = dt + "/" + mt + "/" + yt;

                    fstring = String.Format("{0,-23}{1,-13}{2,-13}{3,3}{4,8}{5,9}{6,11}{7,10}", "Duty/EL_Period", "DateFrom", "DateTo", "Total_Pd", "EL_Due", "EL_Sanc", "EL_Earned", "Balance");
                    writer.WriteLine(fstring);
                    writer.WriteLine();
                    fstring = String.Format("{0,-23}{1,-13}{2,-13}{3,4}{4,12}{5,8}{6,8}{7,12}", aread.GetString(1).ToString(), date1.ToString(), date2.ToString(), aread.GetString(8).ToString(), aread.GetString(9).ToString(), aread.GetString(10).ToString(), aread.GetString(11).ToString(), aread.GetString(12).ToString());
                    writer.WriteLine(fstring);
                    writer.Close();

                    Label2.Visible = true;
                    Label2.Text = "The entries have been downloaded to " + filePath;

                    #region hmm..
                    //TextBox2
                    //TextBox2.Text = aread.GetString(1).ToString() + "\t";// +aread.GetString(1).ToString();


                    /* TableRow tr = new TableRow();
               
                     //Table1.Rows.Add(
                     //TextBox1.Text = "LOGIN SUCCESSFUL";

                     //Response.Redirect("TeacherEntries.aspx");
                     //DataTable dt = new DataTable();
                     //DataColumn dc1 = new DataColumn("RecordID",typeof(int));
                     //dt.Columns.Add(dc1);
                     //DataRow dr = dt.NewRow();

                     ////dr["RecordID"] = Int64.Parse(aread.GetString(0));
                     //dt.Rows.Add(dr);*/
                    #endregion hmm..

                    while (aread.Read())
                    {
                        //string filePath = "C:\\EarnedLeave\\" + TextBox1.Text.ToString() + ".txt";
                        //string filePath = "C:\\Documents and Settings\\Prakhar\\Desktop\\temp.text";
                        //FileInfo objFileInfo = new FileInfo(filePath);
                        StreamWriter writer2 = objFileInfo.AppendText();

                        df = aread.GetString(2).ToString();
                        mf = aread.GetString(3).ToString();
                        yf = aread.GetString(4).ToString();
                        date1 = df + "/" + mf + "/" + yf;

                        dt = aread.GetString(5).ToString();
                        mt = aread.GetString(6).ToString();
                        yt = aread.GetString(7).ToString();
                        date2 = dt + "/" + mt + "/" + yt;

                        fstring = String.Format("{0,-23}{1,-13}{2,-13}{3,4}{4,12}{5,8}{6,8}{7,12}", aread.GetString(1).ToString(), date1.ToString(), date2.ToString(), aread.GetString(8).ToString(), aread.GetString(9).ToString(), aread.GetString(10).ToString(), aread.GetString(11).ToString(), aread.GetString(12).ToString());
                        writer2.WriteLine(fstring);

                        writer2.Close();
                    }

                    string mailid="";
                    SqlConnection con1 = new SqlConnection(q);
                    con1.Open();
                    string s1 = " SELECT mailid FROM Master where TeacherID = '" + tid + "'"; 
                    SqlCommand cmd1 = new SqlCommand(s1, con1);
                    SqlDataReader aread1 = cmd1.ExecuteReader();
                    if (aread1.Read())
                    {
                        mailid = aread1.GetString(0).ToString();
                    }
                    aread1.Close();
                    con1.Close();

                    string sendermail="",senderpass="";
                    SqlConnection con2 = new SqlConnection(q);
                    con2.Open();
                    string s2 = " SELECT mailid,mailpass FROM AdminPassword";
                    SqlCommand cmd2 = new SqlCommand(s2, con2);
                    SqlDataReader aread2 = cmd2.ExecuteReader();
                    if (aread2.Read())
                    {
                        sendermail = aread2.GetString(0).ToString();
                        senderpass = aread2.GetString(1).ToString();
                    }
                    aread2.Close();
                    con2.Close();

                    NetworkCredential basicAuthenticationInfo = new NetworkCredential("cs054077", senderpass );
                    basicAuthenticationInfo.UserName = sendermail;
                    basicAuthenticationInfo.Password = senderpass;
                    MailMessage message = new MailMessage();
                    message.To.Add(new MailAddress(mailid));
                    message.From = new MailAddress(sendermail);
                    //TextBox1.Text = sender + " " + sendermail + " " + senderpass;
                    message.Subject = "Earned Leave Balance: TeacherID: "+tid+".";
                    message.Body = "Please download the attachment -- '"+tid+".txt'\n\nWith regards,\nRegistrar\nMNNIT\nAllahabad";

                    message.Attachments.Add(new Attachment("c:\\EarnedLeave\\" + tid.ToString() + ".txt"));

                    SmtpClient client = new SmtpClient();
                    client.UseDefaultCredentials = false;
                    client.Credentials = basicAuthenticationInfo;
                    client.Send(message);
                    Panel2.Visible = false;
                    Label2.Visible = true;
                    Label2.Text += "and also Successfully Mailed to '" + mailid +"'."; 
                }
                else
                {
                    Panel2.Visible = false;
                    Label2.Visible = true;
                    Label2.Text = "No record for Teacher ID: " + tid + ".";// TextBox1.Text.ToString() + ".";
                }
                //writer.Close();

                #endregion aread.read
                con.Close();
             }
             else
            {
                Response.Redirect("AdminLogin.aspx");
            }
                          
        }//try

       
        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        catch (SqlException ex)
        {
            Label2.Visible = true;
            Label2.Text = "Teacher ID not valid.";
        }
        catch (SmtpException ex)
        {
            Label2.Visible = true;
            Label2.Text = "Network Unreachable.";
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
        Label2.Visible = false;
        Panel2.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
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

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        TextBox1.Visible = true;
        LinkButton4.Visible = true;
        try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {
                //GridView1.Visible = true;
                string tid = DropDownList8.SelectedItem.ToString();// TextBox1.Text.ToString();
                string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
                SqlConnection con = new SqlConnection(q);
                con.Open();
                string s = " SELECT * FROM " + tid;
                SqlCommand cmd = new SqlCommand(s, con);
                SqlDataReader aread = cmd.ExecuteReader();
                //TextBox2.Text = "RecordID\tVacType\tDayFrom\tMonthFrom\tYearFrom\tDayTo\tMonthTo\tYearTo\tDays\tEL_due\tSanction\tEL_Add\tBalance\n";

                string fstring;
                
                #region aread.read
                if (aread.Read())
                {
                    //string filePath = "C:\\EarnedLeave\\" + tid + ".txt";
                    ////string filePath = "C:\\Documents and Settings\\Prakhar\\Desktop\\temp.text";
                    //FileInfo objFileInfo = new FileInfo(filePath);
                    //if (objFileInfo.Exists)
                    //{
                    //    objFileInfo.Delete();
                    //}
                    //StreamWriter writer = new StreamWriter(filePath);

                    string df = aread.GetString(2).ToString();
                    string mf = aread.GetString(3).ToString();
                    string yf = aread.GetString(4).ToString();
                    string date1 = df + "/" + mf + "/" + yf;
                    //DateTime date1 = new DateTime(Int32.Parse(yf), Int32.Parse(mf), Int32.Parse(df));

                    string dt = aread.GetString(5).ToString();
                    string mt = aread.GetString(6).ToString();
                    string yt = aread.GetString(7).ToString();
                    string date2 = dt + "/" + mt + "/" + yt;

                    fstring = String.Format("{0,-23}{1,-13}{2,-13}{3,3}{4,8}{5,9}{6,11}{7,10}", "Duty/EL_Period", "DateFrom", "DateTo", "Total_Pd", "EL_Due", "EL_Sanc", "EL_Earned", "Balance")+"\n\n";
                    
                    //writer.WriteLine(fstring);
                    //writer.WriteLine();
                    fstring += String.Format("{0,-23}{1,-13}{2,-13}{3,4}{4,12}{5,8}{6,8}{7,12}", aread.GetString(1).ToString(), date1.ToString(), date2.ToString(), aread.GetString(8).ToString(), aread.GetString(9).ToString(), aread.GetString(10).ToString(), aread.GetString(11).ToString(), aread.GetString(12).ToString()) + "\n";
                    //writer.WriteLine(fstring);
                    //writer.Close();

                    Label2.Visible = true;
                    Label2.Text = "The entries have been displayed below:";

                    #region hmm..
                    //TextBox2
                    //TextBox2.Text = aread.GetString(1).ToString() + "\t";// +aread.GetString(1).ToString();


                    /* TableRow tr = new TableRow();
               
                     //Table1.Rows.Add(
                     //TextBox1.Text = "LOGIN SUCCESSFUL";

                     //Response.Redirect("TeacherEntries.aspx");
                     //DataTable dt = new DataTable();
                     //DataColumn dc1 = new DataColumn("RecordID",typeof(int));
                     //dt.Columns.Add(dc1);
                     //DataRow dr = dt.NewRow();

                     ////dr["RecordID"] = Int64.Parse(aread.GetString(0));
                     //dt.Rows.Add(dr);*/
                    #endregion hmm..

                    while (aread.Read())
                    {
                        //string filePath = "C:\\EarnedLeave\\" + TextBox1.Text.ToString() + ".txt";
                        //string filePath = "C:\\Documents and Settings\\Prakhar\\Desktop\\temp.text";
                        //FileInfo objFileInfo = new FileInfo(filePath);
                        //StreamWriter writer2 = objFileInfo.AppendText();

                        df = aread.GetString(2).ToString();
                        mf = aread.GetString(3).ToString();
                        yf = aread.GetString(4).ToString();
                        date1 = df + "/" + mf + "/" + yf;

                        dt = aread.GetString(5).ToString();
                        mt = aread.GetString(6).ToString();
                        yt = aread.GetString(7).ToString();
                        date2 = dt + "/" + mt + "/" + yt;

                        fstring += String.Format("{0,-23}{1,-13}{2,-13}{3,4}{4,12}{5,8}{6,8}{7,12}", aread.GetString(1).ToString(), date1.ToString(), date2.ToString(), aread.GetString(8).ToString(), aread.GetString(9).ToString(), aread.GetString(10).ToString(), aread.GetString(11).ToString(), aread.GetString(12).ToString()) + "\n";
                        //writer2.WriteLine(fstring);

                        //writer2.Close();
                    }
                    TextBox1.Text = fstring;
                    //Panel2.Visible = false;

                    #region commented
                    /* string mailid = "";
                     SqlConnection con1 = new SqlConnection(q);
                     con1.Open();
                     string s1 = " SELECT mailid FROM Master where TeacherID = '" + tid + "'";
                     SqlCommand cmd1 = new SqlCommand(s1, con1);
                     SqlDataReader aread1 = cmd1.ExecuteReader();
                     if (aread1.Read())
                     {
                         mailid = aread1.GetString(0).ToString();
                     }
                     aread1.Close();
                     con1.Close();

                     string sendermail = "", senderpass = "";
                     SqlConnection con2 = new SqlConnection(q);
                     con2.Open();
                     string s2 = " SELECT mailid,mailpass FROM AdminPassword";
                     SqlCommand cmd2 = new SqlCommand(s2, con2);
                     SqlDataReader aread2 = cmd2.ExecuteReader();
                     if (aread2.Read())
                     {
                         sendermail = aread2.GetString(0).ToString();
                         senderpass = aread2.GetString(1).ToString();
                     }
                     aread2.Close();
                     con2.Close();

                     NetworkCredential basicAuthenticationInfo = new NetworkCredential("cs054077", senderpass);
                     basicAuthenticationInfo.UserName = sendermail;
                     basicAuthenticationInfo.Password = senderpass;
                     MailMessage message = new MailMessage();
                     message.To.Add(new MailAddress(mailid));
                     message.From = new MailAddress(sendermail);
                     //TextBox1.Text = sender + " " + sendermail + " " + senderpass;
                     message.Subject = "Earned Leave Balance: TeacherID: " + tid + ".";
                     message.Body = "Please download the attachment -- '" + tid + ".txt'\n\nWith regards,\nRegistrar\nMNNIT\nAllahabad";


                     message.Attachments.Add(new Attachment("c:\\EarnedLeave\\" + tid.ToString() + ".txt"));

                     SmtpClient client = new SmtpClient();
                     client.UseDefaultCredentials = false;
                     client.Credentials = basicAuthenticationInfo;
                     client.Send(message);
                     * */
                    #endregion commented
                }
                else
                {
                    Label2.Visible = true;
                    Label2.Text = "No record for Teacher ID: " + tid + ".";// TextBox1.Text.ToString() + ".";
                    TextBox1.Visible = false;
                    LinkButton4.Visible = false;
                }
                //writer.Close();

                #endregion aread.read
                con.Close();
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }

        }//try


        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        catch (SqlException ex)
        {
            Label2.Visible = true;
            Label2.Text = "Teacher ID not valid.";
            TextBox1.Visible = false;
            LinkButton4.Visible = false;
        }
        catch (SmtpException ex)
        {
            Label2.Visible = true;
            Label2.Text = "Network Unreachable.";
            TextBox1.Visible = false;
            LinkButton4.Visible = false;
        }

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {
                Session.Add("print", DropDownList8.SelectedItem.ToString());
                //TextBox1.Text = "LOGIN SUCCESSFUL";
                Response.Redirect("PrintPage.aspx");
            }
            else
                Response.Redirect("AdminLogin.aspx");
        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Label2.Visible = false;
        TextBox1.Visible = false;
        LinkButton4.Visible = false;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {
                Session.Add("print", DropDownList8.SelectedItem.ToString());
                //TextBox1.Text = "LOGIN SUCCESSFUL";
                Response.Redirect("PrintLimitedEntries.aspx");
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
