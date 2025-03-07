<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FLEX | Personal Details</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
          <a class="active" href="Default2.aspx?id= <%=Label12.Text %>">Home</a>
          <a href="offercourses.aspx?id=<%=Label12.Text %>">Offer Courses</a>
          <a href="RegisterCourse.aspx?id=<%=Label12.Text %>">Register Course</a>
          <a href="makeSection.aspx?id=<%=Label12.Text %>">Make Section</a>
              <a href="Assign_Faculty.aspx?id=<%=Label2.Text %>">Assign Faculty</a>
          <a href="Default.aspx">Log Out</a>
        </div>

        <form id="form1" runat="server">
        <%--<h1 style="margin-left: 0px; color: #FFFFFF; background-color: #0000FF; width: 100%; text-transform: capitalize; text-align: center;">ACADEMIC OFFICER PORTAL</h1>--%>
        <h2 style="margin-left: 0px; color: #FFFFFF; background-color: #0000FF; width: 100%; text-transform: capitalize;">Personal Details</h2>
            <asp:Label ID="Label11" runat="server" Text="ID:"></asp:Label>
            
            <asp:Label ID="Label12" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            <p>
                <asp:Label ID="Label2" runat="server" Text="E-mail:"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                &nbsp;</p>
            <asp:Label ID="Label3" runat="server" Text="CNIC:"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Date of Birth:"></asp:Label>
                <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
            </p>
            <asp:Label ID="Label5" runat="server" Text="Address:"></asp:Label>
            <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
        </form>
</body>
    

</html>



