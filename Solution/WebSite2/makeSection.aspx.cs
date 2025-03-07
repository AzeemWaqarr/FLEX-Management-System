using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public static class MessageBox3
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
public partial class makeSection : System.Web.UI.Page
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
        string crID = TextBox3.Text;
        string sid = TextBox2.Text;
        string query = "SELECT * FROM Section where sectionID='" + sid+"'";
            cm = new SqlCommand(query, conn);
        SqlDataReader res = cm.ExecuteReader();
        string strength = "51";
        if (!res.HasRows)
        {
            

        }
        else
        {
            if (res.Read())
                strength = res.GetValue(1).ToString();
            res.Close();
            int s = 0;
            s = Convert.ToInt32(strength);
            if (s < 50)
            {

                s++;
                query = "INSERT INTO STUDIESIN VALUES('" + stdId + "','" + sid + "','" + crID + "')";
                cm = new SqlCommand(query, conn);
                res = cm.ExecuteReader();
                res.Close();
                query = "Update SECTION SET STRENGTH=" + s.ToString() + "where sectionID='" + sid+"';";
                cm = new SqlCommand(query, conn);
                res = cm.ExecuteReader();
                MessageBox3.Show(this, "Student Registered");
                res.Close();
                //UPDATE section
                //SET strength = s.ToString();
                //WHERE sectionID = sid;

            }
            else
            {
                MessageBox3.Show(this, "Max Number of Students in Section");
            }
        }
        

        //Console.WriteLine("After method call, value of res : {0}", res);
        cm.Dispose();
        conn.Close();
    }
}