<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%@ page import="java.sql.*" %>
	<%
	response.setIntHeader("Refresh", 2);
	String sender=request.getParameter("sen");
	String recipent=request.getParameter("recipent");
	String filename=request.getParameter("filename");
	

	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","system");
		Statement st=con.createStatement();
		ResultSet rs;
		int i=st.executeUpdate("insert into transaction(sender,recipent,filename) values('"+sender+"','"+recipent+"','"+filename+"')");
		
		response.sendRedirect("index1.jsp");
		
	}catch(Exception e)
	{
		out.println("database error!");
	}
	%>
</body>
</html>