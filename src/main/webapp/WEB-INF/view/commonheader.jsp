<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Online Shopping Site for Car Spares and Magazine-CarWorld.com</title>  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body background="C:\Users\Aswin\Desktop\web project\images\download (2).jpg" >

<nav class="navbar navbar-inverse" >
  <div class="container-fluid" > 
    <div class="navbar-header" >
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
        </button>
        <p class="navbar-brand"><img src="C:\Users\Aswin\Desktop\web project\images\logo.png" alt="carworld_logo" width="180" height="70">
</p>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
	  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="brand.jsp">Brand<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Audi</a></li>
          <li><a href="#">BMW</a></li>
          <li><a href="#">Mercides benz</a></li>
        </ul>
      </li>
      <li><a href="aboutus">About Us</a></li>
	  <li><a href="contactus">Contact Us</a></li>
      <li><a href="enquiry">Enquiry</a></li>
    </ul>
	<ul class="nav navbar-nav navbar-right">
      <li><a href="login"><span class="glyphicon glyphicon-user"></span>Login</a></li>
      <li><a href="register"><span class="glyphicon glyphicon-log-in"></span>Register</a></li>
    </ul>
	<form class="navbar-form navbar-left" action="/action_page.php">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
	</div>
  </div>
</nav>
</body>
</html>