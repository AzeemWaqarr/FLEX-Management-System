using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public static class MessageBox4
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
public partial class Assign_Faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=ELITE\\SQLEXPRESS;Initial Catalog=form;Integrated Security=True");
        conn.Open();
        //MessageBox.Show(this ,"Connection Open");
        SqlCommand cm;
        string id = Label2.Text;
        string InsId = TextBox1.Text;
        string crID = TextBox2.Text;
        string sid = TextBox3.Text;
        //string query = "INSERT INTO TEACHES VALUES('"+InsId+"','"+crID + "','" +sid+"')";
        string query = "Select count(*) from TEACHES where facultyID='" + InsId + "'";
        cm = new SqlCommand(query, conn);
        SqlDataReader res = cm.ExecuteReader();
        string count = "";
        if (res.Read()) { 
         count = res.GetValue(0).ToString();
        }
        int c = 5;
        if (count != null)
        {
            c = Convert.ToInt32(count);
        }
        else
        {
            c = 0;
        }
        if (!res.HasRows)
        {


        }
        else
        {
            if(c<3)
            {
                res.Close();
                query = "INSERT INTO TEACHES VALUES('" + InsId + "','" + crID + "','" + sid + "')";
                cm = new SqlCommand(query, conn);
                res = cm.ExecuteReader();
            }
            else
            {
                MessageBox4.Show(this, "Instructor Is Already Teaching Max Number of Courses");
            }
        }
    }
}