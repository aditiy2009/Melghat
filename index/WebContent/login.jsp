<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login.jsp</title>
</head>
<body>
	<%@ page import="java.sql.*"%>	<%--import sql package --%>

	
	<%
	String userid=request.getParameter("txt");
	session.setAttribute("name", userid);
	String pwd=request.getParameter("pwd");
	String utype=request.getParameter("utype");
	
	
	if(userid.equals("admin")&&pwd.equals("hello")&& utype.equals("admin"))
	{
	try{
		
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","system");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select *from admin ");
		boolean flag=false;
		while(rs.next())
		{
			if(userid.equals(rs.getString(1))&& pwd.equals(rs.getString(2)))
			{
				flag=true;
			}
		}
		if(flag)
		{
				response.sendRedirect("Empmngcomb.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		}catch(Exception e)
	{	out.println("database error!");
		}
	}

else{
	try{
		
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","system");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from users ");
	boolean flag=false;
	while(rs.next())
	{
		if(userid.equals(rs.getString(1))&& pwd.equals(rs.getString(2))&& utype.equals("emp"))
		{
			flag=true;
		}
	}
	if(flag)
	
		response.sendRedirect("tablecomb.jsp");
		
	else
		{
			response.sendRedirect("error1.jsp");
		}
	}catch(Exception e)
	{
		out.println("database error!");
	}
}
	%>
<form action="send.jsp"></form>

</body>
</html>