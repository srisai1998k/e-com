<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
    <li><a href="viewproduct1"><span class="glyphicon glyphicon-user"></span> Viewproduct</a></li>
      <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="C:\Users\Dell\eclipse-workspace\Niitpro\src\main\webapp\Resources\Images\we.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
         
        </div>
      </div>

      <div class="item">
        <img src="https://www.organicfacts.net/health-benefits/vegetable/snakegourd.html" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          
        </div>
      </div>
    
      <div class="item">
        <img src="C:\Users\Dell\eclipse-workspace\Niitpro\src\main\webapp\Resources\Images\download.png" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          
        </div>
      </div>
  
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
 <div class="row">
    <div class="col-sm-4" style="background-color:lavender;"> <img src="C:\Users\Dell\eclipse-workspace\Niitpro\src\main\webapp\Resources\Images\download.png" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"> </div>
    <div class="col-sm-4" style="background-color:lavenderblush;"> <img src="C:\Users\Dell\eclipse-workspace\Niitpro\src\main\webapp\Resources\Images\download.png" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"> </div>
    <div class="col-sm-4" style="background-color:lavender;"> <img src="dowload.png" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"> </div>
  </div>


</body>
</html>