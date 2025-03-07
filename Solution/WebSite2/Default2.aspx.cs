using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    string SavedID = "1";
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"].ToString();
        SqlConnection conn = new SqlConnection("Data Source=ELITE\\SQLEXPRESS;Initial Catalog=form;Integrated Security=True");
        conn.Open();
        Page LastPage = (Page)Context.Handler;
        
        string fn, ln, email, cnic, dob, address;
            //id = ((Label)LastPage.FindControl("Label1")).Text;
            SavedID = id;
            string selectquery = "select * from USERS where userid =" + SavedID;

            SqlCommand cmd = new SqlCommand(selectquery, conn);
            SqlDataReader reader1;
            reader1 = cmd.ExecuteReader();
            if (reader1.Read())
            {
                fn = reader1.GetValue(2).ToString();
                ln = reader1.GetValue(3).ToString();
                email = reader1.GetValue(4).ToString();
                cnic = reader1.GetValue(5).ToString();
                dob = reader1.GetValue(8).ToString();
                address = reader1.GetValue(9).ToString();
                Label6.Text = fn + " " + ln;
                Label7.Text = email;
                Label8.Text = cnic;
                Label9.Text = dob;
                Label10.Text = address;
                Label12.Text = id;


            }
        
        conn.Close();
    }

}