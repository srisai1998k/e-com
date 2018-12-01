<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW PRODUCTS</title>
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
<th>Edit or delete</th>
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
<td><a href="EditProduct/${user.pid}">edit</a>&nbsp<a href="deleteproduct/${user.pid}">delete</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>