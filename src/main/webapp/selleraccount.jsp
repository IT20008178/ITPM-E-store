<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
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
                   <li>
                   <c:url value="selleraccount.jsp" var="account">
						<c:param name="id" value="${id}"/>
						<c:param name="name" value="${name}"/>
						<c:param name="email" value="${email}"/>
						<c:param name="phone" value="${phone}"/>
						<c:param name="username" value="${username}"/>
						<c:param name="password" value="${password}"/>
						<c:param name="category" value="${category}"/>
					</c:url> 
					<a class="active" href="${account}">Profile</a></li>
                   <li><a href="#">My products/ Items</a></li>
                   
   
               </ul>
           </nav>


           <br>
	
	<table class="stable" style=" width: 50vw; margin-left : 25vw;">
		<c:forEach var="sel" items="${selDetail}">
			
		<c:set  var="id" value="${sel.id}"/>
		<c:set  var="name" value="${sel.name}"/>
		<c:set  var="email" value="${sel.email}"/>
		<c:set  var="phone" value="${sel.phone}"/>
		<c:set  var="username" value="${sel.userName}"/>
		<c:set  var="password" value="${sel.password}"/>
		<c:set  var="category" value="${sel.category}"/>
		
			
			<tr>
				<th> Seller ID </th>
				<th> Seller Name </th>
				<th> Email </th>
				<th> Phone </th>
				<th> User Name </th>
				<th> Password </th>
				<th> Category </th>
				<th>      </th>
				
			</tr>
			<tr>
				<td> ${sel.id} </td>
				<td> ${sel.name} </td>
				<td> ${sel.email} </td>
				<td> ${sel.phone} </td>
				<td> ${sel.userName} </td>
				<td> ${sel.password} </td>
				<td> ${sel.category} </td>
				<td>
					<c:url value="updateseller.jsp" var="selupdate">
						<c:param name="id" value="${id}"/>
						<c:param name="name" value="${name}"/>
						<c:param name="email" value="${email}"/>
						<c:param name="phone" value="${phone}"/>
						<c:param name="username" value="${username}"/>
						<c:param name="password" value="${password}"/>
						<c:param name="category" value="${category}"/>
					</c:url> 
					<a href="${selupdate}">
					<input type="button" name="update" value="Update"></a>
					
					
					<c:url value="deleteseller.jsp" var="seldelete">
						<c:param name="id" value="${id}"/>
						<c:param name="name" value="${name}"/>
						<c:param name="email" value="${email}"/>
						<c:param name="phone" value="${phone}"/>
						<c:param name="username" value="${username}"/>
						<c:param name="password" value="${password}"/>
						<c:param name="category" value="${category}"/>
					</c:url> 
					<a href="${seldelete}">
					<input type="button" name="delete" value="Delete"> </a>
				 <td>
			</tr>
				
			
		
		</c:forEach>
	</table>
	<br>
	<br>
	
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