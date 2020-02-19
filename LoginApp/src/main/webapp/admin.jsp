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
	<td width="100"><%=rs.getString("name") %></td>
	<td width="100"><%=rs.getString("email") %></td>
	<td width="100"><%=rs.getString("address") %></td>
	<td width="100"><%=rs.getString("mobile") %></td>
	<td width="100"><form method="post" action="authorize.jsp">
	<button type="submit" name="email" value="<%=rs.getString("email")%>">Authorize</button></form></td>


	</tr>
	</table>
	<% } %>
	
	<br>
	<br>

	<a href="logout.jsp"><button type="submit">Logout</button></a>

</body>
</html>