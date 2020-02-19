<%@ page import = java.sql.* %>
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginapp", "root", "root");
	Statement st = con.createStatement();
	String query = "SELECT email, password FROM UserDetails WHERE (email = '" +email + "' AND password = '" +password + "')";
	ResultSet rs;
	rs = st.executeQuery(query);
	if(rs.next()){
		session.setAttribute("email", email);
		response.sendRedirect("welcome.jsp");
	}else{
		System.out.println("Invalid details.");
	}
%>
