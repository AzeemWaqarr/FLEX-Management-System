<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>FLEX | SignUp Page</title>
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
    <h1>Flex Sign Up</h1>
      <form id="form3" runat="server">
      <label for="id">User ID:</label>
      <asp:TextBox ID="TextBox8" runat="server" BackColor="#CCCCFF"></asp:TextBox>
      <label for="fname">First Name:</label>
      <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCFF"></asp:TextBox>
      <label for="lname">Last Name:</label>
      <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCFF"></asp:TextBox>
      <label for="email">E-Mail:</label>
      <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCCCFF"></asp:TextBox>
      <label for="password">Password:</label>
      <asp:TextBox ID="TextBox2" type ="password" runat="server" BackColor="#CCCCFF"></asp:TextBox>
      <label for="cnic">CNIC:</label>
      <asp:TextBox ID="TextBox5" runat="server" BackColor="#CCCCFF"></asp:TextBox>
       <label for="role">Role:</label>
      <asp:TextBox ID="TextBox9" runat="server" BackColor="#CCCCFF"></asp:TextBox>
      <label for="batch">Batch:</label>
      <asp:TextBox ID="TextBox10" runat="server" BackColor="#CCCCFF"></asp:TextBox>
      <label for="address">Address:</label>
      <asp:TextBox ID="TextBox7" runat="server" BackColor="#CCCCFF"></asp:TextBox>
      <label for="dob">Date of Birth:</label>
      <asp:TextBox ID="TextBox6" runat="server" BackColor="#CCCCFF"></asp:TextBox>
      <label for="section">Section:</label>
      <asp:TextBox ID="TextBox11" runat="server" BackColor="#CCCCFF"></asp:TextBox>
      <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#0066FF" Font-Size="Medium" OnClick="Button1_Click" />
      </form>
  </body>
</html>
