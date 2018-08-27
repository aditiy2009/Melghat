<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="shortcut icon" type="image/jpg" href="img/tt2.jpg" />
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
            <!--jQuery library--> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

            <!--Latest compiled and minified JavaScript--> 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="index.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
body{
	background-color:lightblue;
}
.custom-select
  {
  position: relative;
  display: block;
  max-width: 400px;
  min-width: 180px;
  margin: 0 auto;
  border: 1px solid #3C1C78;
  background-color: #16013E;
  z-index: 10;
  }
  select{
    border: none;
    outline: none;
    background: transparent;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: 0;
    margin: 0;
    display: block;
    width: 100%;
    padding: 12px 55px 15px 15px;
    font-size: 14px;
    color: #714BB9;
  }
  &:after
   { position: absolute;
    right: 0;
    top: 0;
    width: 50px;
    height: 100%;
    line-height: 38px;
    content: '\2228';
    text-align: center;
    color: #714BB9;
    font-size: 24px;
    border-left: 1px solid #3C1C78;
    z-index: -1;
  }
body{
  margin-top: 80px
 
  }
div.1{
	align:center;
}
</style>
</head>
<body>
<% String tid=request.getParameter("tid");
session.setAttribute("tid", tid);
%>

<% session.getAttribute("T_id"); %>
     
     <label for='styledSelect1' class='custom-select' >
        <form action="status1.jsp">   
  <select #styledSelect1  name="item" >
    <option value="pending">Pending</option>
    <option value="Accept">Accept</option>
    <option value="Reject">Reject</option>
    </select>
   <button class="btn btn-primary" class="btn btn-info btn-lg" formaction="status1.jsp"> Submit</button>
</form>

</label>
 
   
</body>
</html>