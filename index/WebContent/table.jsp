<!DOCTYPE html>
<html>
<head>
    <title>Tiger Tech</title>
     <link rel="icon" href="data:;base64,iVBORw0KGgo=">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
            <!--jQuery library--> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

            <!--Latest compiled and minified JavaScript--> 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">  
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
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
   .menu {
      float:left;
      width:45%;
     
	margin-left:20px;
    }
    .mainContent {
      float:left;
      width:45%;
      
      margin-left:70px;

    }


        </style>

</head>
<body>
<%@page import="java.sql.*"%>
    
    
   
<table align="center" id="customers">
    <caption style="color:blue"><h3><center>RECIEVED DOCUMENTS</center></h3></caption>
  <tr>
    <th>Transaction ID</th>
    <th>Sender</th>
    <th>Recipient</th>
    <th>Filename</th>
    <th>Date</th>
    <th>Download</th>
    <th>Status</th>
     
  </tr>
  
    
  
   <%
 String res=(String) session.getAttribute("name");
 Connection conn = null;
  Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "system");
ResultSet rs ;
PreparedStatement ps = conn.prepareStatement("select * from transaction where recipent=?");
  ps.setString(1, res);
 rs= ps.executeQuery();

int i=0;while(rs.next())
 { %>

<tr>
<td><%= rs.getString("T_id") %></td>
<td><%= rs.getString("sender") %></td>
<td><%= rs.getString("recipent") %></td>
<td><%= rs.getString("filename") %></td>
<td><%= rs.getString("created_at") %></td>
<td><input type="button" name="Download"class="btn btn-info btn-lg" onClick="location.href='./download.jsp?tid=<%= rs.getString("T_id") %>'" value = "Download"/></td>
<td><input type="button" name="Status"class="btn btn-info btn-lg" onClick="location.href='./statuslist.jsp?tid=<%= rs.getString("T_id") %>'" value = "Status"/></td>
</tr><%
i++;
}


%>

</table>
</body>
</html>
