<%@page import="com.sid.gl.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%
     User auth = (User) request.getSession().getAttribute("auth");
     if(auth!=null){
    	 response.sendRedirect("index.jsp");
     }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="includes/head.jsp" %>
</head>
<body>

<div class="container">
<div class="card w-50 mx-auto my-5">
<div class="card-header text-center">Login</div>
<div class="card-body">
<form action="user-login" method="post">

<div class="form-group">
<label>Email</label>
<input type="email" class="form-control" name="login-email" placeholder="Enter your email" required/>
</div>

<div class="form-group">
<label>Password</label>
<input type="password" class="form-control" name="login-password" placeholder="**********" required/>
</div>

<div class="text-center">
<button type="submit" class="btn btn-primary">Login</button>
</div>


</form>

</div>
</div>

</div>

<%@include file="includes/footer.jsp" %>

</body>
</html>