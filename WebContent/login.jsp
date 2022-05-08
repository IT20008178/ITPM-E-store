
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <h3>Login</h3>
     <form action="loginAction.jsp" method="post"> 
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="password" name="password" placeholder="Enter Password" required>
     <input type="submit" name="submit" value="login"> 
     </form>
      <h3><a href="signup.jsp">SignUp</a></h3>
       <h3><a href="forgotPassword.jsp">Forgot Password</a></h3>
  </div>
   <div class='whysignLogin'>
  <% 
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
  <h1>Incorrect Username or Password</h1>
<%} %>
<%if("invalid".equals(msg))
{%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
   <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  
  </div>
</div>
</body>
</html>