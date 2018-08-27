<!DOCTYPE html>
<html>
<head>
  
<style>
body{
 	background-color:lightblue;
 }
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}
body{
 	background-color:white;
 }
#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body>
<%@ page import="java.sql.*" %>
<table id="customers">
    <caption style="color:blue"><h3>OUTGOING DOCUMENTS</h3></caption>
  <tr>
    <th>Transaction ID</th>
    <th>Sender</th>
    <th>Recipient</th>
    <th>Filename</th>
    <th>Date & Time</th>
    <th>Status</th>
  </tr>
  

<%
 String sen=(String) session.getAttribute("name");
Connection conn = null;
 
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "system");
ResultSet rs ;
PreparedStatement ps = conn.prepareStatement("select * from transaction where sender=?");
  ps.setString(1, sen);
 rs= ps.executeQuery();
int i=0;while(rs.next())
 { %>

<tr><td><%= rs.getString("T_id") %></td>
<td><%= rs.getString("sender") %></td>
<td><%= rs.getString("recipent") %></td>
<td><%= rs.getString("filename") %></td>
<td><%= rs.getString("created_at") %></td>
<td><%= rs.getString("status") %></td>
</tr>
<%
i++;

}
%>
</table>

</body>
</html>
