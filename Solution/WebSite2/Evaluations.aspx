<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Evaluations.aspx.cs" Inherits="Evaluations" %>

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

    <h1 style="margin-left: 0px; color: #FFFFFF; background-color: #0000FF; width: 100%; text-transform: capitalize; text-align: center;">STUDENT PORTAL</h1>
      <div class="topnav">
          <a class="active" href="Home.aspx?id= <%=Label12.Text %>">Home</a>
          <a href="Register.aspx?id=<%=Label12.Text %>">Register Courses</a>
          <a href="Attendance.aspx?id=<%=Label12.Text %>">View Attendance</a>
          <a href="Evaluations.aspx?id=<%=Label12.Text %>">View Marks</a>
          <a href="Login.aspx">Log Out</a>
       </div>

    <form id="form1" runat="server">
        <div>
          <h2 style="margin-left: 0px; color: #FFFFFF; background-color: #0000FF; width: 100%; text-transform: capitalize;">Course Evaluations</h2>
            <asp:Label ID="Label11" runat="server" Text="ID:"></asp:Label>            
            <asp:Label ID="Label12" runat="server"></asp:Label>
            <br />
          <br/>
        </div>
        <div style="margin-left: 40px">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <asp:Label ID="Label13" runat="server" Text="Course1"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label19" runat="server" Text="QuizTotal"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label20" runat="server" Text="Assignment"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label21" runat="server" Text="Sessionals"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label22" runat="server" Text="Project"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label23" runat="server" Text="Final"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label15" runat="server" Text="Course2"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label24" runat="server" Text="QuizTotal"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label29" runat="server" Text="Assignment"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label34" runat="server" Text="Sessionals"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label39" runat="server" Text="Project"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label44" runat="server" Text="Final"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label14" runat="server" Text="Course3"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label25" runat="server" Text="QuizTotal"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label30" runat="server" Text="Assignment"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label35" runat="server" Text="Sessionals"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label40" runat="server" Text="Project"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label45" runat="server" Text="Final"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label16" runat="server" Text="Course4"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label26" runat="server" Text="QuizTotal"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label31" runat="server" Text="Assignment"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label36" runat="server" Text="Sessionals"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label41" runat="server" Text="Project"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label46" runat="server" Text="Final"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label17" runat="server" Text="Course5"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label27" runat="server" Text="QuizTotal"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label32" runat="server" Text="Assignment"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label37" runat="server" Text="Sessionals"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label42" runat="server" Text="Project"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label47" runat="server" Text="Final"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label18" runat="server" Text="Course6"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label28" runat="server" Text="QuizTotal"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label33" runat="server" Text="Assignment"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label38" runat="server" Text="Sessionals"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label43" runat="server" Text="Project"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label48" runat="server" Text="Final"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
