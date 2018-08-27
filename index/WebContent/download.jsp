
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>
	
	<%@page import="java.sql.*"%>
<%

String tid=request.getParameter("tid");
session.setAttribute("tid", tid);

String Tid=(String)session.getAttribute("tid");
String Filename=null;
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "system");
ResultSet rs ;
PreparedStatement ps = conn.prepareStatement("select filename from transaction where T_id=?");
ps.setString(1, Tid);

rs= ps.executeQuery();
while(rs.next())
{	
 Filename=rs.getString("filename");
	}

out.println(Filename);
 



  String filepath = "E:/apache/data/";   
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + Filename+ "\"");   
  
  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + Filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  fileInputStream.close();   
%>   