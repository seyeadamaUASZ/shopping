<%@page import="com.sid.gl.model.*"%>
<%@page import="com.sid.gl.connection.DbCon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
     User auth = (User) request.getSession().getAttribute("auth");
     if(auth!=null){
    	 request.setAttribute("auth",auth);
     }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E commerce</title>
<%@include file="includes/head.jsp" %>

</head>
<body>
<%@include file="includes/navbar.jsp" %>
 


<%@include file="includes/footer.jsp" %>

</body>
</html>