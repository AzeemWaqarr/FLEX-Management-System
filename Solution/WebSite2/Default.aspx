<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>FLEX | Login Page</title>
    <style>
      body {
        background-color: #f2f2f2;
        font-family: Arial, sans-serif;
      }
      h1 {
        text-align: center;
        color: #333;
      }
      form {
        max-width: 400px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
      }
      label {
        display: block;
        margin-bottom: 10px;
        color: #666;
      }
      input[type="text"], input[type="password"] {
        border-style: none;
            border-color: inherit;
            border-width: medium;
width: 89%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            background-color: #f2f2f2;
      }
      input[type="submit"], input[type="reset"] {
        display: inline-block;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        background-color: #4CAF50;
        color: #fff;
        cursor: pointer;
      }
      input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #3e8e41;
      }
    </style>
  </head>
  <body>
    <h1>FLEX Login</h1>
      <form id="form1" runat="server">
      <label for="userid">UserID:</label>
      <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCFF"></asp:TextBox>
      <label for="password">Password:</label>
      <asp:TextBox ID="TextBox2" type ="password" runat="server" BackColor="#CCCCFF"></asp:TextBox>
      <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#0066FF" Font-Size="Medium" OnClick="Button1_Click" />
      </form>
  </body>
</html>
