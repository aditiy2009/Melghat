<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*"%>
<%

String status=request.getParameter("item");
String T_id=(String)session.getAttribute("tid");
 Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "system");
PreparedStatement ps = conn.prepareStatement(" update transaction set status=? where T_id=? ");
ps.setString(1, status);
ps.setString(2, T_id);

int i= ps.executeUpdate();

response.sendRedirect("table.jsp");
%>
</body>
</html>