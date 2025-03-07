using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using static System.Net.Mime.MediaTypeNames;

public static class MessageBox
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
public partial class _Default : System.Web.UI.Page
{
    string name;
    string password;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=ELITE\\SQLEXPRESS;Initial Catalog=form;Integrated Security=True");
        conn.Open();
        //MessageBox.Show(this ,"Connection Open");
        SqlCommand cm;
        string un = TextBox1.Text;
        string pass = TextBox2.Text;
        string query = "SELECT * FROM USERS WHERE userid = '" + un + "' AND Password = '" + pass + "'";
        cm = new SqlCommand(query, conn);
        name = un;
        password = pass;
        SqlDataReader res = cm.ExecuteReader();
        

        if (!res.HasRows)
        {
            MessageBox.Show(this,"No such username found");
        }
        else
        {
            res.Close();
            string a;
            string selectquery = "select * from USERS where userid =" + un;
            SqlCommand cmd = new SqlCommand(selectquery, conn);
            SqlDataReader reader1;
            reader1 = cmd.ExecuteReader();
            if (reader1.Read())
            {
                a = reader1.GetValue(6).ToString();
                if (a == "Academic Officer")
                {
                    Response.Redirect("Default2.aspx?id=" + un);
                }
            }
            else
            {
                MessageBox.Show(this,"NO DATA FOUND");
            }
            
            // MessageBox.Show("Successfully logged in!");
        }

        Console.WriteLine("After method call, value of res : {0}", res);
        cm.Dispose();
        conn.Close();
        //this.Close();
    }



    
}