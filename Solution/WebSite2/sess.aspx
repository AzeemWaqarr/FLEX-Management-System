<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sess.aspx.cs" Inherits="sess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <title>FLEX</title>
	<style>
		/* Basic CSS styles */
		body {
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}
		header {
			background-color: #3c6cb5;
			color: #FFF;
			padding: 20px;
			display: flex;
			align-items: center;
			justify-content: space-between;
		}
		h1 {
			margin: 0;
			font-size: 36px;
		}
		nav {
			background-color: #314973;
			display: flex;
			align-items: center;
			justify-content: center;
			padding: 10px;
		}
		nav ul {
			list-style: none;
			margin: 0;
			padding: 0;
			display: flex;
			align-items: center;
			justify-content: center;
		}
		
		nav2 {
			background-color: white;
			display: flex;
			align-items: center;
			justify-content: center;
			padding: 10px;
		}
		nav2 ul {
			list-style: none;
			margin: 0;
			padding: 0;
			display: flex;
			align-items: center;
			justify-content: center;
		}

		nav li {
			margin: 0 10px;
		}
		nav a {
			color: #FFF;
			text-decoration: none;
			font-size: 18px;
			padding: 10px 20px;
			border-radius: 5px;
			transition: all 0.3s ease;
		}
		nav a:hover {
			background-color: #b1c3de;
			color: #00539F;
		}
		.container {
			max-width: 1200px;
			margin: 0 auto;
			padding: 20px;
			display: flex;
			flex-wrap: wrap;
			justify-content: space-between;
			align-items: center;
		}
		.card {
			background-color: #FFF;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			width: 30%;
			margin-bottom: 30px;
			transition: all 0.3s ease;
		}
		.card:hover {
			transform: translateY(-10px);
		}
		.card img {
			border-top-left-radius: 10px;
			border-top-right-radius: 10px;
			width: 100%;
			height: 200px;
			object-fit: cover;
		}
		.card .content {
			padding: 20px;
		}
		.card h2 {
			margin: 0;
			font-size: 24px;
			margin-bottom: 10px;
		}
		.card p {
			margin: 0;
			font-size: 16px;
			color: #666;
			margin-bottom: 20px;
		}
		.card a {
			display: block;
			text-align: center;
			background-color: #00539F;
			color: #FFF;
			padding: 10px 20px;
			border-radius: 5px;
			text-decoration: none;
			font-size: 18px;
			transition: all 0.3s ease;
		}
		.card a:hover {
			background-color: #FFF;
			color: #00539F;
		}

		.my-button {
			display: block;
			text-align: center;
			background-color: #314973;
			color: white;
			padding: 10px 20px;
			border: none;
			cursor: pointer; 
		  }
  
		 .my-button:hover {
		background-color: #3c6cb5;
			color: white;
			text-decoration: underline;
		 }

		 
		.my-button2 {
			display: block;
			text-align: center;
			background-color: white;
			color:  #314973;
			padding: 10px 20px;
			border: none;
			cursor: pointer; 
		  }
  
		 .my-button2:hover {
		background-color: #3c6cb5;
			color: white;
			text-decoration: underline;
		 }
		 .fancy-textbox {
			background-color: #fff;
			border: 2px solid #ccc;
			border-radius: 5px;
			box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
			color: #333;
			font-size: 16px;
			padding: 10px;
			transition: border-color 0.2s, box-shadow 0.2s;
		}

		.fancy-textbox:hover, .fancy-textbox:focus {
			border-color: #4CAF50;
			box-shadow: 0 0 5px rgba(76, 175, 80, 0.4);
			outline: none;
		}

		.fancy-button {
			background-color: #314973;
			border: none;
			border-radius: 5px;
			box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
			color: #fff;
			cursor: pointer;
			font-size: 16px;
			padding: 10px 20px;
			transition: background-color 0.2s, box-shadow 0.2s;
		}

		.fancy-button:hover {
			background-color: #3c6cb5;
			box-shadow: 0 0 5px rgba(76, 175, 80, 0.4);
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
  <header>
    <h1><i class="fas fa-graduation-cap"></i>FLEX</h1>
  </header>

  <nav>
    <ul>
	<asp:Button ID="h44" runat="server" Text="Home" CssClass="my-button" BorderStyle="None" CausesValidation="False" Font-Size="Large" OnClick="h44_Click"/>
	<asp:Button ID="curs44" runat="server" Text="Course" CssClass="my-button" BorderStyle="None" CausesValidation="False" Font-Size="Large" OnClick="curs44_Click"/>
	<asp:Button ID="md44" runat="server" Text="Marks distribution" CssClass="my-button" BorderStyle="None" CausesValidation="False" Font-Size="Large" OnClick="md44_Click"/>
	<asp:Button ID="ma44" runat="server" Text="Manage Attendance" CssClass="my-button" BorderStyle="None" CausesValidation="False" Font-Size="Large" OnClick="ma44_Click"/>
	<asp:Button ID="me44" runat="server" Text="Manage Evaluation" CssClass="my-button" BorderStyle="None" CausesValidation="False" Font-Size="Large" OnClick="me44_Click"/>
	<asp:Button ID="gg44" runat="server" Text="Generate Grades" CssClass="my-button" BorderStyle="None" CausesValidation="False" Font-Size="Large" OnClick="gg44_Click"/>
	<asp:Button ID="ggr44" runat="server" Text="Generate Grades Report" CssClass="my-button" BorderStyle="None" CausesValidation="False" Font-Size="Large" OnClick="ggr44_Click"/>
    </ul>
  </nav>


  <section>
    <h2>Welcome to Sessionals Evaluations!</h2>
    <p></p>
  </section>
		
		<asp:Label ID="Label14" runat="server" Text="Sessional#: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="q4" runat="server" BackColor="#CCCCFF" BorderStyle="None" Height="16px" Width="225px" CssClass="fancy-textbox"></asp:TextBox>
        <br />		<br />		
        <asp:Label ID="Label24" runat="server" Text="Student ID: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="sid4" runat="server" BackColor="#CCCCFF" BorderStyle="None" Height="16px" Width="226px" CssClass="fancy-textbox"></asp:TextBox>
        <br />      <br />
        <asp:Label ID="Label34" runat="server" Text="Course ID: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="cid4" runat="server" BackColor="#CCCCFF" BorderStyle="None" Height="16px" Width="225px" CssClass="fancy-textbox"></asp:TextBox>
        <br />        <br />
        <asp:Label ID="Label44" runat="server" Text="Total Marks: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="tm4" runat="server" BackColor="#CCCCFF" BorderStyle="None" Height="16px" Width="226px" CssClass="fancy-textbox"></asp:TextBox>
        <br />        <br />
		<asp:Label ID="Label54" runat="server" Text="Obtained Marks: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="gm4" runat="server" BackColor="#CCCCFF" BorderStyle="None" Height="16px" Width="226px" CssClass="fancy-textbox"></asp:TextBox>
		
        <p style="margin-left: 480px">
            <asp:Button ID="sb" runat="server" Text="Submit" CssClass="fancy-button" OnClick="sb_Click"/>
        </p>

    </form>
</body>
</html>
