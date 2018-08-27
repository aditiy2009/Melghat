
<%@ page import="java.sql.*" %>
<html>
<head>
    <style>
   
  
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
<center><h3>Employee Details</h3></center>
  
  <table id="customers">
    
  <tr>
  	<th>Login ID</th>
  	<th>Password</th>
    <th>Employee name</th>
    <th>Role</th>
  </tr>

<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","system");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from users ");
  while(rs.next())
  {
      String EmployeeId=rs.getString("name");
      String EmployeePassword=rs.getString("password");
      String EmployeeName=rs.getString("empn");
      String EmployeeRoll=rs.getString("roll");
      
  %>
<tr>
<td><b><font color='#663300'><%=EmployeeId%></font></b></td>
<td><b><font color='#663300'><%=EmployeePassword%></font></b></td>
<td><b><font color='#663300'><%=EmployeeName%></font></b></td>
<td><b><font color='#663300'><%=EmployeeRoll%></font></b></td>
</tr>
<%
  }
 %>
 </table>
 </body>
</html>