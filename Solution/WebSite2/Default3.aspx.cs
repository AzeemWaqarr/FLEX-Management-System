using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Default3 : System.Web.UI.Page
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
        string users = TextBox8.Text;
        string fn = TextBox1.Text;
        string ln = TextBox3.Text;
        string pass = TextBox2.Text;
        string email = TextBox4.Text;
        string cnic = TextBox5.Text;
        string role = TextBox9.Text;
        string batch = TextBox10.Text;
        string dob = TextBox6.Text;
        string address = TextBox7.Text;
        string section = TextBox11.Text;
        CultureInfo culture = new CultureInfo("en-US");
        DateTime tempDate = Convert.ToDateTime(dob, culture);      
        string query = "INSERT INTO USERS VALUES('"+users+"','" + pass + "','" + fn + "','" + ln + "','" + email + "','" + cnic + "','" + role + "','" + batch + "','" + tempDate + "','" + address +"','" + section + "')";
        cm = new SqlCommand(query, conn);
        SqlDataReader res = cm.ExecuteReader();

        if (!res.HasRows)
        {

            Server.Transfer("Default.aspx");
            //MessageBox.Show(this, "No such username found");
        }
        else
        {
            
            // MessageBox.Show("Successfully logged in!");
        }

        Console.WriteLine("After method call, value of res : {0}", res);
        cm.Dispose();
        conn.Close();
        //this.Close();
    }

}