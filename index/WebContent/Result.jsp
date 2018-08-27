<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Result</title>
<style>
body{
 	background-color:lightblue;
 }
 .div{
  	background-image:url("img/upload12.jpg");
  	background-position:400px 50px;
  	background-repeat:no-repeat;
  }
  
</style>
</head>
<body class="div">
	<center>
		<h3>${requestScope.message}</h3>
		
	</center>
</body>
</html>