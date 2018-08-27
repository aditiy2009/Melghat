<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%
session.getAttribute("userid");
	response.setIntHeader("Refresh", 2);
	String logid=request.getParameter("txt");
	String pwd=request.getParameter("pwd");
	String empn=request.getParameter("empn");
	String roll=request.getParameter("roll");
	String utype=request.getParameter("emp");

	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","system");
		Statement st=con.createStatement();
		ResultSet rs;
		int i=st.executeUpdate("insert into users values('"+logid+"','"+pwd+"','"+empn+"','"+roll+"','"+utype +"')");
		
		response.sendRedirect("dhi.html");
		
	}catch(Exception e)
	{
		out.println("database error!");
	}
	
%>
</body>
</html>