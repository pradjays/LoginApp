<%@ page import = "java.sql.*" %>
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginapp", "root", "root");
	Statement st = con.createStatement();
	String query = "SELECT email, password, authorized FROM UserDetails WHERE (email = '" +email + "' AND password = '" +password + "')";
	ResultSet rs;
	rs = st.executeQuery(query);
	if(rs.next()){
		int auth = rs.getInt("authorized");
		if(auth==1){
			session.setAttribute("email", email);
			if(email.equals("admin@gmail.com")){
				response.sendRedirect("admin.jsp");
			}else{
				response.sendRedirect("welcome.jsp");
			}
		}else{
			response.sendRedirect("unauthorized.jsp");
		}
		}else{
			System.out.println("Invalid details.");
		}
		
%>
