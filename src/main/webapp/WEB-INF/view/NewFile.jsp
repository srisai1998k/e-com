<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table>
<c:forEach items="${prod}" var="user">

<tr>
<th>id</th>
<th>cost</th>
<th>desc</th>
<th>name</th>
<th>quantity</th>
<tr>
    <td>
        <c:out value="${user.pid}"/>
    </td>
    <td>
        <c:out value="${user.pcost}" />
   </td>
    <td>
        <c:out value="${user.pdesc}" />
   </td>
   <td>
   <c:out value="${user.pname}" />
</td>
<td>
<c:out value="${user.qty}" />
</td>
<td><a href="cart/${user.pid}"><span class="glyphicon glyphicon-plus"></span></a>
</tr>
</c:forEach>
</table>

</body>
</html>