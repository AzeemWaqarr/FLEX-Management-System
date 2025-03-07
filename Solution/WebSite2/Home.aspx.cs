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

public partial class Home : System.Web.UI.Page
{
    string SavedID = "1";
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"].ToString();
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-CA5NHT7\\SQLEXPRESS;Initial Catalog=final_project;Integrated Security=True");
        conn.Open();
        string fname = "", lname = "", cnic = "", email = "", dob = "", address = "";
        SavedID = id;
        string selectquery = "select * from Users where userID = " + SavedID;
        SqlCommand cmd = new SqlCommand(selectquery, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if(reader.Read())
        {
            fname = reader.GetValue(2).ToString();
            lname = reader.GetValue(3).ToString();
            email = reader.GetValue(4).ToString();
            cnic = reader.GetValue(5).ToString();
            dob=reader.GetValue(8).ToString();
            address = reader.GetValue(9).ToString();
        }
        Label12.Text = SavedID;
        Label6.Text = fname+lname;
        Label7.Text = email;
        Label8.Text = cnic;
        Label9.Text = dob;
        Label10.Text = address;
    }
}