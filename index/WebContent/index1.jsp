<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MELGHAT-files</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


        <link rel="stylesheet" href="css/style.css">
        <link rel="shortcut icon" type="image/jpg" href="img/tt2.jpg" />
                <!--<link rel="stylesheet" src="css/bootstrap.min.css" >-->
          
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <!--<link rel="stylesheet" src="css/bootstrap.min.css" >-->
            
        <!--jQuery library--> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
       <!-- <script src="css/jquery.min.js"></script>-->

            <!--Latest compiled and minified JavaScript--> 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
       <!-- <script src="/bootstrap.min.js"></script>-->
        
        <link rel="stylesheet" type="text/css" href="index.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=password], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div.1{
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
body{
 	background-color:lightblue;
 }
  
</style>
    <script> function validate()
        {
            var x= document.forms["myForm"]["email"].value;
            var y= document.forms["myForm"]["password"].value;
            if(x ==="" || y==="")
            {
                alert("All fields must be specified");
                return false;
            }
          
                        if(y ==="")
            {
                alert("Password must be supplied");
                return false;
            }
        }</script>
    </head>
    <body>
    <%@ page import="java.sql.*" %>
        <div>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header"><img src="img/tt2.jpg" width="50" height="50">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="#" class="navbar-brand">FILE TRACKING MELGHAT</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="Empmngcomb.jsp"><span class="glyphicon glyphicon-user">Employee Details</span></a></li>
                        <li><a href="tablecomb1.jsp"><span class="glyphicon glyphicon-file">Document Details</span></a></li>
                       <li><a href="index1.jsp"><span class="glyphicon glyphicon-file">Files</span></a></li>
                  	<li><a href="help.html"><span class="glyphicon glyphicon-earphone">Help</span></a></li>
                 	
                  <li><a href="EmailForm.jsp"><span class="glyphicon glyphicon-envelope">Email</span></a></li>
                  
                  <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out">Logout</span></a></li>
                    
                    </ul>
                </div>
            </div>
        </nav>
        </div>
<br><br>
      
  <h1>    <caption style="color:blue"><span class="glyphicon glyphicon-file">Document</span></caption>
</h1>
  <p> This page will show the record of all the documents</p>                                                                                      
  <div class="table-responsive">  
  <form name=myname method=post action="delete.jsp">       
  <table class="table"  id="customers">
    
      <tr>
       <th>Select</th>
        <th>Id</th>
       <th>Name</th>        
        <th>Type</th>
        <th>Sender</th>
        <th>Date</th>
       
         
      </tr>
   
<%try{
	String uploader=(String) session.getAttribute("name");
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "system");
ResultSet rs ;
PreparedStatement ps = conn.prepareStatement("select * from document where uploader=?");
  ps.setString(1, uploader);
 rs= ps.executeQuery();
int i=0; while(rs.next()){ %>
<tr><td><input type="checkbox" name="check<%=i%>" value=<%= rs.getString("id") %>></td>
<td><%= rs.getString("id") %></td>
<td><%= rs.getString("name") %></td>
<td><%= rs.getString("type") %></td>
<td><%= rs.getString("uploader") %></td>
<td><%= rs.getString("created_at") %></td>
</tr><%
i++;
}
}catch(SQLException e){ System.out.println(e.getMessage()); } %>
  </table>
  
  </div>
</div>
        
<center> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Add Document</button>
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1">
                <span class="glyphicon glyphicon-send"></span>
                </button>
        <button name="delete" action="delete.jsp" type="submit" class="btn btn-info btn-lg">
            <span class="glyphicon glyphicon-trash"></span></button>
            
  </form>      
</center>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Add Document</h4>
      </div>
      <div class="modal-body">
                         <ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#home">New Document</a></li>

 </ul>

<div>
    <!--incoming-->
  <div id="home" class="tab-pane fade in active">
            <div class="row row_style">
            <div class="col-xs-6">

              <div class="panel panel-default">
                  
                  <div class="panel-body">
     <div class="1">             
                     
                    <form action="upload.jsp" method="post" enctype="multipart/form-data">  
Select File:<input type="file" name="fname"/><br/>  
<input type="image" src="img/m1.png"/>  
</form> 
                     <form action=add.jsp enctype="multipart/form-data" >
    <label for="fname">Document name</label>
    <input type="text" id="fname" name="Name" placeholder="Name">

    <label for="lname">Document type</label>
    <input type="text" id="lname" name="Type" placeholder="Type">
    
    <label for="lname">Uploader</label>
    <input type="text" id="lname" value="<%=session.getAttribute("name")%>" name="uploader" placeholder="Uploader">

    <input type="submit" value="Submit" action="add.jsp">
  </form>
  
  </div>
             </div>             
                          
                      </form>
               
                </div>
            </div>
        </div>
  </div>
  
</div>
    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Add Document</h4>
      </div>
      <div class="modal-body">
                         <ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#home">New Document</a></li>

 </ul>

<div>
    <!--incoming-->
  <div id="home" class="tab-pane fade in active">
            <div class="row row_style">
            <div class="col-xs-6">

              <div class="panel panel-default">
                  
                  <div class="panel-body">
                     <form action=Emp_management.jsp >
    <label for="fname">Document name</label>
    <input type="text" id="fname" name="Name" placeholder="Employee name">

    <label for="lname">Document type</label>
    <input type="text" id="lname" name="Type" placeholder="Login ID">
    
    <label for="lname">Document type</label>
    <input type="text" id="lname"  name="Type" placeholder="Login ID">
    
    
    <input type="submit" value="Submit">
  </form>
                  </div>
                </div>
            </div>
        </div>
  </div>
  
</div>
    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<div id="myModal1" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Send Document</h4>
      </div>
      <div class="modal-body">
                         <ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#home">Send Document</a></li>
 
 </ul>

<div >
    <!--incoming-->
  <div id="home" class="tab-pane fade in active">
            <div class="row row_style">
            <div class="col-xs-6">

              <div class="panel panel-default">
                  
                  <div class="panel-body">
                <% session.getAttribute(" name");%>
                     <form action=send1.jsp >
    <label for="fname">Recipient name</label>
    <input type="text" id="rname" name="recipent" placeholder="Employee name">
     <label for="fname">Sender name</label>
    <input type="text" id="sname" value="<%=session.getAttribute("name")%>" name="sen" placeholder="Sender name">
    <label for="lname">Document name</label>
    <input type="text" id="dname" name="filename" placeholder="Document name">
    <input type="submit" value="Submit">
  </form>
                  </div>
                </div>
            </div>
        </div>
  </div>
    </div>
          </div>
        </div>
        </div>
        </div>
        
         <footer >
            <div class="container" >
                    <center><p>Copyright © Melghat. All Rights Reserved | Contact Us: +91 0000 00000
                        </p></center>
            </div>
        </footer>
    </body>
</html>




