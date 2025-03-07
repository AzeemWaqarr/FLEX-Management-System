<%@ Page Language="C#" AutoEventWireup="true" CodeFile="offercourses.aspx.cs" Inherits="offercourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FLEX | Offer Courses</title>
    <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: blue;
}

.topnav a {
  float: left;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color:blue;
  color: black;
}

.topnav a.active {
  background-color: blue;
  color: white;
}
</style>
</head>
<body>
     <h1 style="margin-left: 0px; color: #FFFFFF; background-color: #0000FF; width: 100%; text-transform: capitalize; text-align: center;">ACADEMIC OFFICER PORTAL</h1>
          <div class="topnav">
          <a href="Default2.aspx?id= <%=Label2.Text %>">Home</a>
          <a class="active" href="offercourses.aspx?id=<%=Label2.Text %>">Offer Courses</a>
          <a href="RegisterCourse.aspx?id=<%=Label2.Text %>">Register Courses</a>
              <a href="makeSection.aspx?id=<%=Label12.Text %>">Make Section</a>
              <a href="Assign_Faculty.aspx?id=<%=Label2.Text %>">Assign Faculty</a>
          <a href="Default.aspx">Log Out</a>
        </div>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Enter Course ID:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 230px" Width="204px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Enter Project Weightage:"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 50px" Width="202px"></asp:TextBox>
        </p>
        <asp:Label ID="Label4" runat="server" Text="Enter Course Name:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 200px" Width="204px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Enter Lab Weightage:"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 81px" Width="202px"></asp:TextBox>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Enter Credit Hours:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 211px" Width="204px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Text="Enter Pre-Requisite ID:"></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server" style="margin-left: 67px" Width="202px"></asp:TextBox>
        </p>
        <asp:Label ID="Label6" runat="server" Text="Enter Coordinator ID:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 193px" Width="204px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" Text="Enter Final Weightage:"></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server" style="margin-left: 77px" Width="202px"></asp:TextBox>
&nbsp;<p>
            <asp:Label ID="Label7" runat="server" Text="Enter Assignment Weightage:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 132px" Width="204px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="#3333CC" BorderColor="White" ForeColor="White" OnClick="Button1_Click" style="margin-left: 572px" Text="Offer Course" Width="202px" />
        </p>
        <asp:Label ID="Label8" runat="server" Text="Enter Quiz Weightage:"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 185px" Width="204px"></asp:TextBox>
        <p>
            <asp:Label ID="Label9" runat="server" Text="Enter Sessional Weightage:"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 148px" Width="204px"></asp:TextBox>
        </p>
    </form>
</body>
</html>
