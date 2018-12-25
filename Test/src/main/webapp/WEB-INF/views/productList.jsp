<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix ="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
th{font-family: Algerian;font-size: 20px;color:#ffff00;}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class="container">
	<center><h2 style="font-family: Algerian; color: #ffff00">Product List</h2></center>

<table class="table table-hover" id="category" class="display" border="1" width="80" align="Centre">

<tr>
<th> Sr No.</th><th>PID</th><th>Name</th><th>Supplier</th><th>Category</th>
<th>Price</th><th style="width:15">Description</th>
<th>Image</th><th>View Details</th>

<c:if test="${empty productList }"><tr><td colspan="9" align="centre">No record exists</td></tr>
</c:if>
<c:forEach var="c" varStatus="st" items="${productList }">
<tr>
<td><c:out value="${st.count}"></c:out></td>
<td><c:out value="${c.id}"></c:out></td>
<td><c:out value="${c.name}"></c:out></td>
<td><c:out value="${c.supplier.supplierName}"></c:out></td>
<td><c:out value="${c.category.name}"></c:out></td>
<td><c:out value="${c.price}"></c:out></td>
<td class="span2"><c:out value="${c.description}"></c:out></td>
<td><img src="${pageContext.request.contextPath}/resources/${c.imgname}" height="50px" width="50px"></td>
 
</tr>
</c:forEach>
</table>
</div>
 <br><br><br><br><br><br>
  <center><footer><div class="container_fluid text-muted">e-commerce site @Copyright by .....</div> </footer></center>
</body>
</html>