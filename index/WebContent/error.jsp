<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERROR 404</title>
<style>
body{
 	background-color:lightblue;
 }
  
</style>
</head>
<body>
<%
session.invalidate();
	session =request.getSession();
	out.println("SERVER NOT RESPONDING ERROR 404");

%>
</body>
</html>