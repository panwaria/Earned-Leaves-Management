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

public partial class Search : System.Web.UI.Page
{
    static int flag;
    
    static string author, category;
    protected void Page_Load(object sender, EventArgs e)
    {
        //flag = 0;

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button1.Visible = true;

        string q = RadioButtonList1.SelectedItem.ToString();
        
        if (q.Equals("Category"))
        {
            flag = 0;
            Label1.Visible = true;
            Label2.Visible = false;
            DropDownList1.Visible = true;
            TextBox1.Visible = false;
            category = DropDownList1.SelectedItem.ToString();
        }
        else
        {
            flag = 1;
            Label2.Visible = true;
            Label1.Visible = false;
            TextBox1.Visible = true;
            DropDownList1.Visible = false;
            author = TextBox1.Text.ToString();

        }
        TextBox2.Text = flag.ToString();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s1 = TextBox2.Text.ToString();
        flag = Int32.Parse(s1);
        //TextBox3.Text = flag.ToString ();
        if (flag == 1)
        {
            GridView2.Visible = true;
            GridView1.Visible = false;
            //if (GridView2.RowCreated)
            //{
            //    Label5.Text = "File present";
            //}
            //TextBox2.Text = "in flag 1";
            //TextBox3.Text = author;
            //TextBox2.Text = GridView2.SelectedIndex.ToString();
            //string auth = "SELECT  author,username, gender, emailid, profession, password, project, Expr1, filename, category, submittime FROM View1 WHERE (author = '" + TextBox1.Text.ToString() + "')";

            //    string auth = "SELECT * FROM description where author = '"+author+"'";
            string s = TextBox1.Text.ToString();
            string auth = "select username from description where author = '" + s + "'";
            string q = "Data Source=.\\SQLEXPRESS;" + "AttachDbFilename=" + "C:\\Documents and Settings\\Ron$\\Desktop\\SE_FINAL\\App_Data\\Database.mdf" + ";Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con = new SqlConnection(q);
            con.Open();
            SqlCommand cmd = new SqlCommand(auth, con);
            //SqlDataReader dr;
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
               // TextBox7.Text = dr.GetString(0);
                string abc = dr.GetString(0);

                string df = "select project,filename,category,submittime from [user] where username = '" + abc + "'";
                SqlConnection con1 = new SqlConnection(q);
                con1.Open();
                SqlCommand cmd1 = new SqlCommand(df, con1);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                while (dr1.Read())
                {
                   // TextBox3.Text = dr1.GetString(0);
                   // TextBox4.Text = dr1.GetString(1);
                   // TextBox5.Text = dr1.GetString(2);
                   ////TextBox6.Text = dr1.GetString(3);
                    break;

                }
            dr1.Close();
            con1.Close();
            //GridView2.Rows .
            break;
            }

            dr.Close();
            con.Close();
        }
        //}
        else if (flag == 0)
        {
            GridView2.Visible = false;
            GridView1.Visible = true;
            //string cat = "SELECT * FROM description where category ='"+category+"'";
        }
    }

    //protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    string abc = GridView2.se
    //    TextBox4.Text = abc;
    //}
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    
}
