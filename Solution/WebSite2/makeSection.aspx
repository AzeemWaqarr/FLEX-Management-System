<%@ Page Language="C#" AutoEventWireup="true" CodeFile="makeSection.aspx.cs" Inherits="makeSection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FLEX | Make Section</title>
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
          <a href="offercourses.aspx?id=<%=Label2.Text %>">Offer Courses</a>
          <a href="RegisterCourse.aspx?id=<%=Label2.Text %>">Register Course</a>
          <a class="active" href="makeSection.aspx?id=<%=Label2.Text %>">Make Section</a>
              <a href="Assign_Faculty.aspx?id=<%=Label2.Text %>">Assign Faculty</a>
          <a href="Default.aspx">Log Out</a>
        </div>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Enter Student ID:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 50px"></asp:TextBox>
        </p>
        <asp:Label ID="Label5" runat="server" Text="Enter Course ID:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 54px"></asp:TextBox>
        <p>
        <asp:Label ID="Label4" runat="server" Text="Enter Section ID:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 52px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" BackColor="Blue" ForeColor="White" OnClick="Button1_Click" style="margin-left: 376px" Text="Insert" Width="108px" />
        </p>
    </form>
</body>
</html>
