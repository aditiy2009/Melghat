<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>MELGHAT-Document details</title>
        <link rel="shorcut icon" type="image/jpg" href="img/tt2.jpg" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
            <!--jQuery library--> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

            <!--Latest compiled and minified JavaScript--> 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="index.css">     
  <style>
 body{
 	background-color:lightblue;
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

   
    <br><br><br><br><br>
  <iframe class="menu" src="table.jsp" height="500"></iframe>
  <iframe class="mainContent" src="table2.jsp" height="500"></iframe>
	
		<footer >
            <div class="container" >
                    <center><p>Copyright © Melghat. All Rights Reserved | Contact Us: +91 0000 00000
                        </p></center>
            </div>
        </footer>
    </body>
</html>
