<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
  <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
  <script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery.validate/1.5.5/jquery.validate.min.js"></script>
  <script type="text/javascript" src="default.js"></script>
</head>
<body>
<form id="form1" runat="server">
  <fieldset id="OrderInfo">
    <legend>Order Information</legend>
    
    <table>
      <tr>
        <th>Item</th>
        <th>Price</th>
        <th>Qty</th>
        <th>Total</th>
      </tr>
      <tr>
        <td><a href="http://manning.com/gallo2/">ASP.NET AJAX in Action, Second Edition</a></td>
        <td>$49.99</td>
        <td>2</td>
        <td>$99.98</td>
      </tr>
      <tr>
        <td><a href="http://encosia.com/823">JavaScript: The Good Parts</a></td>
        <td>$29.99</td>
        <td>1</td>
        <td>$29.99</td>
      </tr>
      <tr>
        <td><a href="http://www.amazon.com/gp/product/0735619670?tag=encosia-20">Code Complete, Second Edition</a></td>
        <td>$49.99</td>
        <td>1</td>
        <td>$49.99</td>
      </tr>
      <tr>
        <td colspan="3" align="right">Total:</td>
        <td>$179.96</td>
      </tr>
    </table>
  </fieldset>
    
  <fieldset class="validationGroup">
    <legend>Returning customer?  Login here</legend>
    
    <label for="Username">Email:</label>
    <asp:TextBox runat="server" ID="Username" CssClass="required email" />
    
    <label for="Password">Password:</label>
    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="required"  />
    
    <asp:Button runat="server" ID="Login" Text="Login" CssClass="causesValidation" />
  </fieldset>
  
  <fieldset class="validationGroup">
    <legend>New customer?  Provide the following</legend>
    
    <label for="FirstName">First Name:</label>
    <asp:TextBox runat="server" ID="FirstName" CssClass="required" />
    
    <label for="LastName">Last Name:</label>
    <asp:TextBox runat="server" ID="LastName" CssClass="required" />
    
    <label for="Address">Address:</label>
    <asp:TextBox runat="server" ID="Address" CssClass="required" />
    
    <label for="City">City:</label>
    <asp:TextBox runat="server" ID="City" CssClass="required" />
    
    <label for="State">State:</label>
    <asp:TextBox runat="server" ID="State" CssClass="required" />
    
    <label for="Zip">Zip:</label>
    <asp:TextBox runat="server" ID="Zip" CssClass="required digits" />
    
    <asp:Button runat="server" ID="Order" Text="Submit Order" CssClass="causesValidation" />
  </fieldset>
</form>
</body>
</html>
