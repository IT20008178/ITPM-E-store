<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	String id=request.getParameter("id");
	String email=request.getParameter("email");
	String status="Deliverd";
	try
	{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		st.executeUpdate("update cart set status='"+status+"' where product_Id='"+id+"' and email='"+email+"' and address is not NULL");
		response.sendRedirect("orderReceived.jsp?msg=deliverd");
	}
	catch(Exception e)
	{
		System.out.println(e);
		response.sendRedirect("orderReceived.jsp?msg=wrong");
	}

%>