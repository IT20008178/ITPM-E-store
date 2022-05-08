<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>

<%
/*String email=session.getAttribute("email").toString();*/
String user_email=request.getParameter("email");
try
{
	Connection conn = ConnectionProvider.getCon();
	Statement st=conn.createStatement();
	st.executeUpdate("DELETE FROM users WHERE email="+email);
	response.sendRedirect("login.jsp?msg=removed");
	out.println("Account Deleted Successfully!");
}
catch(Exception e)
{
	System.out.print(e);
}
%>