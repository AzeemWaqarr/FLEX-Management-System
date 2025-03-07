using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public static class MessageBox2
{
    public static void Show(this Page Page, String Message)
    {
        Page.ClientScript.RegisterStartupScript(
           Page.GetType(),
           "MessageBox",
           "<script language='javascript'>alert('" + Message + "');</script>"
        );
    }
}
public partial class offercourses : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"].ToString();
        Label2.Text = id;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection("Data Source=ELITE\\SQLEXPRESS;Initial Catalog=form;Integrated Security=True");
        conn.Open();
        //MessageBox.Show(this ,"Connection Open");
        SqlCommand cm;
        string id = Label2.Text;
        string cId = TextBox1.Text;
        string query = "SELECT * FROM Course WHERE courseID = '" + cId + "'";
        cm = new SqlCommand(query, conn);
        SqlDataReader res = cm.ExecuteReader();


        if (!res.HasRows)
        {
            res.Close();
            string cName = TextBox2.Text;
            string crdthrs = TextBox3.Text;
            string coordID = TextBox4.Text;
            string assignwt = TextBox5.Text;
            string quizwt = TextBox6.Text;
            string sesswt = TextBox7.Text;
            string projectwt = TextBox8.Text;
            string labwt = TextBox9.Text;
            string prereqID = TextBox10.Text;
            string finalwt = TextBox11.Text;
            int a = 0;
            a = Convert.ToInt32(assignwt);
            a += Convert.ToInt32(quizwt);
            a += Convert.ToInt32(sesswt);
            a += Convert.ToInt32(projectwt);
            a += Convert.ToInt32(labwt);
            a += Convert.ToInt32(finalwt);
            if(a==100)
            {   query = "INSERT INTO COURSE VALUES('" + cId + "','" + cName + "','" + crdthrs + "','" + coordID + "','" + assignwt + "','" + quizwt + "','" + sesswt + "','" + projectwt + "','" + finalwt + "','" + labwt + "','" + prereqID + "')";
                cm = new SqlCommand(query, conn);
                SqlDataReader res1 = cm.ExecuteReader();
                MessageBox2.Show(this, "Course Offered!");
            }
            else
            {
                MessageBox2.Show(this, "Weightages not Equal to 100");
            }

        }
        else
        {
            //MessageBox.Show(this, "Course ID Taken");
        }

        Console.WriteLine("After method call, value of res : {0}", res);
        cm.Dispose();
        conn.Close();
    }
}