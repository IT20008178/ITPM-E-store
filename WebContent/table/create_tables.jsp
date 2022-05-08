<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table users(name varchar(100), email varchar(100)primary key,mobileNumber bigint,securityQuestion varchar(200),answer varchar(200),password varchar(100),address varchar(500),city varchar(100))";
	String q2="create table message(id int AUTO_INCREMENT,email varchar(100),subject varchar(300),body varchar(1000),PRIMARY KEY(id))";
	//System.out.print(q1);
	System.out.print(q2);
	
	//st.execute(q1);
	st.execute(q2);
	
	System.out.print("Table created");
	con.close();
}
catch(Exception e)
{
	System.out.print(e);} 
%>

