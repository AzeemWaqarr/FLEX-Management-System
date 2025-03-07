using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Evaluations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string id = Request.QueryString["id"].ToString();
        //SqlConnection conn = new SqlConnection("Data Source=DESKTOP-CA5NHT7\\SQLEXPRESS;Initial Catalog=final_project;Integrated Security=True");
        //conn.Open();
        //Label12.Text = id;
        //string q1 = "SELECT * FROM Course inner JOIN StudiesIn ON Course.courseID = StudiesIn.courseID WHERE StudiesIn.studentID = " + id;
        //// would return multiplt rows
        //SqlCommand cmd = new SqlCommand(q1, conn);
        //SqlDataReader reader = cmd.ExecuteReader();

        ////while(reader.HasRows)
        ////{
        ////    if (reader.Read())
        ////    {

        ////    }
        ////}
        //int rows = 6;
        

    }
}