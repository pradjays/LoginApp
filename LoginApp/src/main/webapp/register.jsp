<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
</head>
<body bgcolor="add8e6">
<h1>Registration</h1>
	<form method="post" action="login.jsp">
    <table>
    	<tr>
        <td>Full Name</td>
        <td><input type="text" name="name" value="" /></td>
        </tr>
        
        <tr>
        <td>Email</td>
        <td><input type="text" name="email" value="" /></td>
        </tr>
        
        <tr>
        <td>Address</td>
        <td><input type="text" name="address" value="" /></td>
        </tr>
        
        <tr>
        <td>NIC No</td>
        <td><input type="text" name="NIC" value="" /></td>
        </tr>
        
        <tr>
        <td>Mobile</td>
        <td><input type="text" name="mobile" value="" /></td>
        </tr>
        
        <tr>
        <td>Password</td>
        <td><input type="password" name="password" value="" /></td>
        </tr>
        
        <tr></tr>
        
        <tr>
        <td><button type="submit" value="Register">Register</button></td>
        <td><button type="reset" value="Clear">Clear</button></td>
        </tr>
    </table>
    </form>
    Already registered? Login <a href="login.jsp">here.</a>
</body>
</html>