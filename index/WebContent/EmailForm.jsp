<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MELGHAT-email</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="icon" type="image/jpg" href="tt2.jpg" />
      
       <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
    	body{
 	background-color:lightblue;
 }
  
    </style>
</head>
<body>
<div class="w3-container w3-padding w3-black">
        <span class="w3-button w3-black w3-right w3-xxlarge"></span>
        <h2>Send Mail<img src="img/tt2.jpg" width="50" height="50"></h2>
        </div>
        
            <div class="w3-panel">
	<form action="SendMailAttachServlet" method="post" enctype="multipart/form-data">
		<table >
			
			<tr>
				<td class="w3-button w3-green">Recipient address </td>
				<td><input type="text" name="recipient" placeholder="send mail to friend...."  class="w3-input w3-border w3-margin-bottom"/></td>
			</tr><br><br>
			<tr>
				<td class="w3-button w3-green">Subject </td>
				<td><input type="text" name="subject" placeholder="write your subject..." class="w3-input w3-border w3-margin-bottom" /></td>
			</tr><br><br>
			<tr>
				<td class="w3-button w3-green">Content </td>
				<td><textarea rows="10" cols="39" name="content" class="w3-input w3-border w3-margin-bottom" placeholder="What's in your mind?"></textarea> </td>
			</tr><br><br>
			<tr>
				<td class="w3-button w3-green">Attach file </td>
				<td><input type="file" name="file" size="50" placeholder="attach some filles..." class="w3-input w3-border w3-margin-bottom"/></td>
			</tr><br><br>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Send" class="w3-button w3-blue w3-right"/></td>
			</tr>
		</table>	
	</form>
	</div>
	<footer >
            <div class="container" >
                    <center><p>Copyright © Melghat. All Rights Reserved | Contact Us: +91 0000 00000
                        </p></center>
            </div>
        </footer>
</body>
</html>