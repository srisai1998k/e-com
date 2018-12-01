<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<a href="viewproduct">View product</a>
<h2 style="color: red;">Addproduct</h2>
</center>
<form:form method="post" path="form" action="addproduct" modelAttribute="addproduct">
  <table align="center" style="width:10cm">
  
      	<tr><h2><td style="color: black;">id</td></h2>
    	<td><form:input type="text" path="pid" placeholder="User Name"/></td></tr>
    	
    		<tr><h2><td style="color: black;">pname</td></h2>
    	<td><form:input type="text" path="pname" placeholder="Name"/></td></tr>
    	
  		<tr><h2><td style="color: black;">quantity</td></h2>
    	<td><form:input type="text" path="qty" placeholder="email" ></form:input></td></tr>
    	
    	<tr><h2><td style="color: black;">desc</td></h2>
		<td><form:input type="text" path="pdesc" placeholder="Phone Number"></form:input></td><tr>
  
  		<tr><h2><td style="color: black;">cost</td></h2>
    	<td><form:input type="text" path="pcost" placeholder="Password" ></form:input></td></tr>
    	
  </table>
    
  <table align="center">    
     	<tr><td align="center"><input type="submit"  value="Cancel" style="background-color: red; color:white; width: 200px; height: 50px;"></td>
     	<td><input type="submit" name="submit" value="Submit" style="background-color: green; color:white; width: 200px; height: 50px;"></td></tr>
  </table>	
</form:form>

</body>
</html>