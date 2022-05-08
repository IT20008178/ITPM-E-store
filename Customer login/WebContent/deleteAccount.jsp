<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<title>Change Details</title>
<style>
hr
{width:70%;}</style>
</head>
<body>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from users where email='"+email+"'");
	while(rs.next())
	{		
%>
 <h3>Email: <%=rs.getString(2) %></h3>
 <hr>

      <br>
      <br>
      
<%
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>

<form action="deleteAccountAction.jsp" method="post">
 </form>

</body>
</html>