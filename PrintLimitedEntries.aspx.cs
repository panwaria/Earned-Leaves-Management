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

public partial class PrintLimitedEntries : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Visible = true;
        TextBox3.Visible = true;
        try
        {
            if (Session["admin"].ToString().Equals("Administrator"))
            {
                //GridView1.Visible = true;
                //string tid = DropDownList8.SelectedItem.ToString();// TextBox1.Text.ToString();
                string tid = Session["print"].ToString();
                string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
                SqlConnection con = new SqlConnection(q);
                con.Open();
                string s = " SELECT * FROM " + tid;
                SqlCommand cmd = new SqlCommand(s, con);
                SqlDataReader aread = cmd.ExecuteReader();
                //TextBox2.Text = "RecordID\tVacType\tDayFrom\tMonthFrom\tYearFrom\tDayTo\tMonthTo\tYearTo\tDays\tEL_due\tSanction\tEL_Add\tBalance\n";

                SqlConnection con2 = new SqlConnection(q);
                con2.Open();
                string s2 = " SELECT Name,Designation,Dept FROM Master where TeacherID = '" + tid + "'";
                SqlCommand cmd2 = new SqlCommand(s2, con2);
                SqlDataReader aread2 = cmd2.ExecuteReader();
                string name, desg, dept;
                if (aread2.Read())
                {
                    name = aread2.GetString(0).ToString();
                    desg = aread2.GetString(1).ToString();
                    dept = aread2.GetString(2).ToString();
                }
                else
                {
                    name = " Not Mentioned ";
                    desg = " Not Mentioned ";
                    dept = " Not Mentioned ";
                }
                string intro;
                string duty_el="", total_pd="", el_due="", el_sanc="", el_earn="", balance="";
                string fstring = "";
                intro = "\t\t\t  Motilal Nehru National Institute of Technology\n";
                intro += "\t\t\t--------------------------------------------------\n";
                intro += "\n\n\t\t\t\t\tOffice Order" + "\n\n\n";
                intro += "\t\t\t  SUB: Sanction of Earned Leaves\n\n";
                intro += "\t\t\t  EMPLOYEE NAME: " + name + "\n\t\t\t  EMPLOYEE CODE: " + tid + "\n\t\t\t  DESIGNATION:   " + desg + "\n\t\t\t  DEPARTMENT:    " + dept;
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

                    fstring = String.Format("{0,-19}{1,-13}{2,-13}{3,3}{4,8}{5,9}{6,11}{7,10}", "Duty/EL_Period", "DateFrom", "DateTo", "Total_Pd", "EL_Due", "EL_Sanc", "EL_Earned", "Balance") + "\n\n";

                    //writer.WriteLine(fstring);
                    //writer.WriteLine();
                    //fstring += String.Format("{0,-19}{1,-13}{2,-13}{3,4}{4,12}{5,8}{6,8}{7,12}", aread.GetString(1).ToString(), date1.ToString(), date2.ToString(), aread.GetString(8).ToString(), aread.GetString(9).ToString(), aread.GetString(10).ToString(), aread.GetString(11).ToString(), aread.GetString(12).ToString()) + "\n";
                    //writer.WriteLine(fstring);
                    //writer.Close();

                    Label2.Visible = true;
                    Label2.Text = "Sanction of Earned Leave is accorded to '" + name + "' as per details given below :\n";

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

                        //fstring += String.Format("{0,-19}{1,-13}{2,-13}{3,4}{4,12}{5,8}{6,8}{7,12}", aread.GetString(1).ToString(), date1.ToString(), date2.ToString(), aread.GetString(8).ToString(), aread.GetString(9).ToString(), aread.GetString(10).ToString(), aread.GetString(11).ToString(), aread.GetString(12).ToString()) + "\n";
                        //writer2.WriteLine(fstring);

                        //writer2.Close();
                        duty_el = aread.GetString(1).ToString();
                        total_pd = aread.GetString(8).ToString();
                        el_due = aread.GetString(9).ToString();
                        el_sanc = aread.GetString(10).ToString();
                        el_earn = aread.GetString(11).ToString();
                        balance = aread.GetString(12).ToString();                        
                    }
                    fstring += String.Format("{0,-19}{1,-13}{2,-13}{3,4}{4,12}{5,8}{6,8}{7,12}", duty_el.ToString(), date1.ToString(), date2.ToString(), total_pd.ToString(), el_due.ToString(), el_sanc.ToString(), el_earn.ToString(), balance.ToString()) + "\n";
                    string fstring2="";
                    fstring2 = "\t\t\t\t\t\t\t\t\tsd/-";
                    fstring2 += "\n\t\t\t\t\t\t\t\t\tDirector";
                    fstring2 += "\nCopy to:\n(i) Person concerned. \n(ii) HOD concerned. \n(iii) Personal File \n\t\t\t\t\t\t\t\t\tBy Order\n\n\n\t\t\t\t\t\t\t\t        Registrar";
                    TextBox1.Text = fstring;
                    TextBox2.Text = intro;
                    TextBox3.Text = fstring2;
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
                    TextBox3.Visible = false;
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
            TextBox3.Visible = false;
        }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewEntries.aspx");
    }
}
