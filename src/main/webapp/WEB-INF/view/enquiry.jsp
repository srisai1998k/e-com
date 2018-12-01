<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<title>Enqiury</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  
<style>
input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
	width: 600px;
	float: center;
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
p.padding1 { padding-bottom: 0.25cm;}
p.padding2 { padding-bottom: 15%;}
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
</head>
<body>

<jsp:include page="commonheader.jsp"/>

<center>
<h3 style="color: white;">Enqiury</h3>


<div class="container">
  <form>
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name..">






    <label for="country">Country</label>
    <select id="country" name="country">
      <option value="India">India</option>
      
    </select>

    <label for="subject">Subject</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>

<p class="padding1"></p>

<jsp:include page="commonfooter.jsp" />

</center>

</body>
</html>