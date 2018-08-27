<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <%@ page import="java.sql.*,java.util.*" %>

 
<% 

String Name=request.getParameter("Name");
String Type=request.getParameter("Type");
String uploader=request.getParameter("uploader");

try{
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","system");
	 PreparedStatement ps = con.prepareStatement("insert into document (name,type,uploader) values (?,?,?)");      
       ps.setString(1, Name);
       ps.setString(2, Type);
       ps.setString(3, uploader);
              
      int i= ps.executeUpdate();
	response.sendRedirect("index1.jsp");
}catch(Exception e)
{
	
}

%>                                
  
</body>
</html>