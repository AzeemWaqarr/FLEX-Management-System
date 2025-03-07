<%@ Page Language="C#" AutoEventWireup="true" CodeFile="me.aspx.cs" Inherits="me" %>

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
	</style>
</head>
<body>
    <form id="form1" runat="server">
  <header>
    <h1><i class="fas fa-graduation-cap"></i>FLEX</h1>
  </header>

  <nav>
    <ul>
	<asp:Button ID="h4" runat="server" Text="Home" CssClass="my-button" BorderStyle="None" CausesValidation="False" Font-Size="Large" OnClick="h4_Click"/>
	<asp:Button ID="curs4" runat="server" Text="Course" CssClass="my-button" BorderStyle="None" CausesValidation="False" Font-Size="Large" OnClick="curs4_Click"/>
	<asp:Button ID="md4" runat="server" Text="Marks distribution" CssClass="my-button" BorderStyle="None" CausesValidation="False" Font-Size="Large" OnClick="md4_Click"/>
	<asp:Button ID="ma4" runat="server" Text="Manage Attendance" CssClass="my-button" BorderStyle="None" CausesValidation="False" Font-Size="Large" OnClick="ma4_Click"/>
	<asp:Button ID="gg4" runat="server" Text="Generate Grades" CssClass="my-button" BorderStyle="None" CausesValidation="False" Font-Size="Large" OnClick="gg4_Click"/>
	<asp:Button ID="ggr4" runat="server" Text="Generate Grades Report" CssClass="my-button" BorderStyle="None" CausesValidation="False" Font-Size="Large" OnClick="ggr4_Click"/>
    </ul>
  </nav>


  <section>
    <h2>Welcome to Manage Evaluations!</h2>
    <p>Select a Section to Evaluate</p>
  </section>
		
  <nav2>
    <ul>
	<asp:Button ID="q" runat="server" Text="Quiz" CssClass="my-button2" BorderStyle="None" CausesValidation="False" Font-Size="X-Large" OnClick="q_Click" />
	<asp:Button ID="ass" runat="server" Text="Assignment" CssClass="my-button2" BorderStyle="None" CausesValidation="False" Font-Size="X-Large" OnClick="ass_Click" />
	<asp:Button ID="pr" runat="server" Text="Project" CssClass="my-button2" BorderStyle="None" CausesValidation="False" Font-Size="X-Large" OnClick="pr_Click" />
	<asp:Button ID="sess" runat="server" Text="Sessional" CssClass="my-button2" BorderStyle="None" CausesValidation="False" Font-Size="X-Large" OnClick="sess_Click" />
	<asp:Button ID="fin" runat="server" Text="Final" CssClass="my-button2" BorderStyle="None" CausesValidation="False" Font-Size="X-Large" OnClick="fin_Click" />
	<asp:Button ID="lab" runat="server" Text="Lab Tasks" CssClass="my-button2" BorderStyle="None" CausesValidation="False" Font-Size="X-Large" OnClick="lab_Click" />
    </ul>
  </nav2>

    </form>
</body>
</html>
