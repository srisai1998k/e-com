<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
<style>


input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
	width: 500px;
	float: center;
	border-radius: 5px;
    padding: 20px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
p.padding1 { padding: 0.25cm;}
p.padding2 { padding-bottom: 5cm;}
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
.footer {
   position: fluid;
   background-color: black;
   color: white;
   text-align: center;
}

.search {
	width: 60%;
	padding-left: 35em;
}

</style>
<body>

<jsp:include page="commonheader.jsp" />

<center>
<h2>Login</h2>
</center>

<form:form method="post" path="form" action="Login" modelAttribute="addproduct">

  <div class="container">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" path="username"  name="new"/>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" path="password" name="pass"/>    
    <button type="submit">Login</button></a>
    <input type="checkbox" checked="checked"> Remember me
  </div>

  <div class="container">
	
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
	
  </div>
 
</form:form>


<jsp:include page="commonfooter.jsp" />

</body>
</html>
