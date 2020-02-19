<%@ page import = "java.sql.*" %>
<% String email = request.getParameter("email");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginapp", "root", "root");
	Statement st = con.createStatement();
	
	String query = "UPDATE UserDetails SET authorized = 1 WHERE email LIKE '" +email + "';";
	st.executeUpdate(query);
	
	response.sendRedirect("admin.jsp");
%>
