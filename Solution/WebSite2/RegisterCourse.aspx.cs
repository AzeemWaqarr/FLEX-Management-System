using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.ServiceModel.Security.Tokens;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public static class MessageBox1
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
public partial class RegisterCourse : System.Web.UI.Page
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
        string stdId = TextBox1.Text;
        string crID = TextBox2.Text;
        string sid = TextBox3.Text;
        string query = "SELECT * FROM Course where courseID="+crID;
        string query1 = "SELECT count(*) FROM studies where studentID=" + stdId+"AND completed=0";
        cm = new SqlCommand(query, conn);
        SqlDataReader res1 = cm.ExecuteReader();
        string check = "7";
        if(res1.Read())
        check = res1.GetValue(0).ToString();
        res1.Close();
        int a = 7;
        a = Convert.ToInt32(check);
        if (a <= 5)
        {
            cm = new SqlCommand(query, conn);
            SqlDataReader res = cm.ExecuteReader();
            // fn = reader1.GetValue(2).ToString();
            string matchto = "1";
            if (res.Read())
                matchto = res.GetValue(10).ToString();
            res.Close();
            query = "select* from studies where studentID=" + stdId + "AND courseID=" + matchto;
            cm = new SqlCommand(query, conn);
            res = cm.ExecuteReader();
            if (!res.HasRows)
            {
                res.Close();
                MessageBox1.Show(this, "Pre-Req Not Clear");
                //query = "INSERT INTO COURSE VALUES('" + cId + "','" + cName + "','" + crdthrs + "','" + coordID + "','" + assignwt + "','" + quizwt + "','" + sesswt + "','" + projectwt + "','" + finalwt + "','" + labwt + "','" + prereqID + "')";
                //cm = new SqlCommand(query, conn);
                //SqlDataReader res1 = cm.ExecuteReader();
            }
            else
            {
                string completed = "1";
                if (res.Read())
                    completed = res.GetValue(2).ToString();
                res.Close();
                if (completed == "1")
                {
                    query = "Insert INTO STUDIES VALUES('" + stdId + "','" + crID + "','" + sid + "')";
                    cm = new SqlCommand(query, conn);
                    res = cm.ExecuteReader();
                    MessageBox1.Show(this, "Student Registered!");
                }
                else
                {
                    MessageBox1.Show(this, "Pre-Req Not Clear");
                }
            }
        }
        else
        {
            MessageBox1.Show(this, "Max Number of Courses Registered");
        }

        //Console.WriteLine("After method call, value of res : {0}", res);
        cm.Dispose();
        conn.Close();
    }
}