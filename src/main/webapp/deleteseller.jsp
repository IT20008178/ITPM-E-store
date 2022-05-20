<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete profile</title>
<link rel="stylesheet" href="css/css1.css" />
</head>
<body>

	<header >
				<marquee width="880 px"  scrolldelay="100" scrollamount="10">
				
                    <h1> 
                        <font class="font">
							<span> E s t o r e </span> 
                         </font>
                        
                    </h1>
                </marquee>    
                    <div class="topnav">
                        <input type="text" placeholder="Search..">
                    </div>
                    <input type="button" class="Search" value="Search">
                </header>
            <br>


            <nav>
          		<ul >
   
                   <li class="tfont"> <a href="#">Home</a></li>
                   <li><a href="login.jsp">Seller</a></li>
                   <li><a class="active" href="selleraccount.jsp">Profile</a></li>
                   <li><a href="#">My products/ Items</a></li>
                   
   
               </ul>
           </nav>

	<%
		String id =request.getParameter("id");
		String name= request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String category = request.getParameter("category");
	%>
	
	<form action="delepro" method="post" style=" width: 50vw; margin-left : 25vw;">
	<table>
		<tr>
			<td>Seller ID<input type="text" name="sid" value="<%= id %>" readonly></td> 
		</tr>
		<tr>
			<td>Name<input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
			<td>Email<input type="email" name="email" value="<%= email %>" readonly> </td>
		</tr>
		<tr>
			<td>Phone<input type="text" name="phone" value="<%= phone %>" readonly></td>
		</tr>
		<tr>
			<td>User Name<input type="text" name="uname" value="<%= username %>" readonly></td>
		</tr>
		<tr>
			<td>Password<input type="password" name="pass" value="<%= password %>" readonly></td>
		</tr>
		<tr>
			<td>Category<input type="text" name="category" value="<%=category %>" readonly></td>
		</tr>
		<tr>
			<td><input type="submit" name="submit" value="Delete MY Profile"></td>
		</tr>
	</table>
	</form>
<br><br>
			<Footer align="center" class="footer">


                           <div>
                               <table class="ftable" width="100%" height="150px">
                                   <tr>
                                       <th></th>
                                       <th> </th>
                                       <th> </th>
                                       <th> </th>
                                       <th> </th>
                                   </tr>

                                   <tr>
										<th><h2> About US </h2></th>
										<th><h2>Contact US </h2></th>
										<th><h2>  </h2></th>
										<th><h2> </h2></th>
										<th><h2>  </h2></th>
                                   </tr>

                                   <tr align="center">

                                       <td>
                                           <div class="phone">
                                               
                                               E-store shopping system is the application <br> that allows the users to shop online  <br> without going to the shops to buy them.
                                           </div>
                                       </td>
                                       <td>  +94112304565 <br> estore@gmail.com </td>
                                       <td>  <a href="#" class="fa fa-facebook"></a> 
                                       <a href="#" class="fa fa-google"></a> 
                                       <a href ="#" class="fa fa-twitter"></a> 
                                       <a href="#" class="fa fa-youtube"></a> 
                                       <a href="#" class="fa fa-instagram"></a> </td>
                                       
                                   </tr>
    
                               </table>
                           </div>
                           <br>

						  
                           <P class="tfont">Copyright &copy; 2022  <a href="http://courseweb.sliit.lk/"> estore.com</a></P>
               
                       </Footer>
</body>
</html>