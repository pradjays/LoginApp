<%@ page import="java.sql.*"%>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String NIC = request.getParameter("NIC");
	String mobileNo = request.getParameter("mobile");
	String password = request.getParameter("password");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginapp", "root", "root");
	Statement st = con.createStatement();
	String query = "insert into UserDetails(name, email, address, NIC, mobile, password) VALUES ('" + name +"', '" + email +"','" + address +"','" + NIC +"','" + mobileNo +"','" + password +"')";
	int execute = st.executeUpdate(query);
	
	response.sendRedirect("login.jsp");
%>