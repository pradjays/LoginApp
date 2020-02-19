<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body bgcolor="add8e6">
The following users must be authorized; <br>
Click the button to authorize. <br>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginapp", "root", "root");
	Statement st = con.createStatement();
	String query = "SELECT * FROM UserDetails WHERE (authorized = 0);";
	ResultSet rs;
	rs = st.executeQuery(query);
%>
	<h3>Unauthorized Users</h3>
	<table>
	<tr>
	<td>Name</td>
	<td>Email</td>
	<td>Address</td>
	<td>Mobile</td>
	<td>Authorize</td>
	</tr>
	<% while(rs.next()){ %>
	<tr>
	<td><%=rs.getString("name") %></td>
	<td><%=rs.getString("email") %></td>
	<td><%=rs.getString("address") %></td>
	<td><%=rs.getString("mobile") %></td>
	<td><button name="auth" type="submit" onclick="authorize()">Authorize</button></td>
	<%
		
		String email = rs.getString("email");
		String query1 = "UPDATE UserDetails SET authorized = 1 WHERE email LIKE '" +email + "';";
		st.executeUpdate(query1);
		%>
	</tr>
	</table>
	<% } %>

</body>
</html>