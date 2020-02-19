<body bgcolor="add8e6">

<%
	if (session.getAttribute("email")==null || session.getAttribute("email")==""){
%>
You are not logged in. <br>
Please login again <a href="login.jsp">here.</a>
<%
	} else {
%>
Welcome to the system <% session.getAttribute("email"); %> <br>

If you wish to logout, click <a href="logout.jsp">here.</a>

<% } %>
</body>