<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Register</title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
  

  </head>
  
<style>
			
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

.container {
	width: 50px;
	float: center;
	border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

p.padding2 { padding-bottom: 5%;}
div.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}

</style>
<body>

<title>Insert title here</title>
</head>
<body>
<div>
<CENTER>Veggies</CENTER>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">VEGGIES</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="Aboutus">About us</a></li>
      <li><a href="contactus">contact us</a></li>
    </ul>
    <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<center>
<h2 style="color: red;">Register</h2>
</center>
<form:form method="post" path="form" action="Register" modelAttribute="register">
  <table align="center" style="width:10cm">
  
      	<tr><h2><td style="color: black;">User Name</td></h2>
    	<td><form:input type="text" path="username" placeholder="User Name"/></td></tr>
    	
    		<tr><h2><td style="color: black;">Name</td></h2>
    	<td><form:input type="text" path="name" placeholder="Name"/></td></tr>
    	
  		<tr><h2><td style="color: black;">email</td></h2>
    	<td><form:input type="text" path="email" placeholder="email" ></form:input></td></tr>
    	
    	<tr><h2><td style="color: black;">Phone Number</td></h2>
		<td><form:input type="text" pattern="[789][0-9]{9}" path="mobno" placeholder="Phone Number"></form:input></td><tr>
  
  		<tr><h2><td style="color: black;">Password</td></h2>
    	<td><form:input type="password" path="password" placeholder="Password" ></form:input></td></tr>
    	
     	<tr><h2><td style="color: black;">Confirm Password</td></h2>
    	<td><form:input type="password" path="ConfirmPassword" placeholder="ConfirmPassword"></form:input></td></tr>
  </table>
    
  <table align="center">    
     	<tr><td align="center"><input type="submit"  value="Cancel" style="background-color: red; color:white; width: 200px; height: 50px;"></td>
     	<td><input type="submit" name="submit" value="Submit" style="background-color: green; color:white; width: 200px; height: 50px;"></td></tr>
  </table>	
</form:form>


</body>
</html>