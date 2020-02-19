<%@ page import = "java.sql.*" %>
<%
String email = request.getParameter("email");
String query1 = "UPDATE UserDetails SET authorized = 1 WHERE email LIKE '" +email + "';";

response.sendRedirect("admin.jsp");
%>