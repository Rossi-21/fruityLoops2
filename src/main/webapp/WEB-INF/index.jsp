<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<!-- for Bootstrap CSS -->
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
		<!-- YOUR own local CSS -->
		<link rel="stylesheet" href="/css/main.css"/>
		<!-- For any Bootstrap that uses JS -->
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
		<title>Fruity Loops</title>
	</head>
	<body>
		<div class="mx-auto" style="width:450px;" >
			<h1 class="mt-3 mb-3" style="color:pink;" >Fruit Store</h1>
			<table class="table" style="width: 450px; border-style:solid; border-width:20px; border-color:pink;">
				<thead>
				<tr>
					<th>Name</th>
					<th>Price</th>
				</tr>	
				</thead>
				<tbody>
					
					<c:forEach var="fruit" items = "${listOfFruits}">
					<tr>
						<td><c:out value="${fruit.name}"></c:out></td>
						<td>$<c:out value="${fruit.price}"></c:out></td>
					</tr>
						</c:forEach>
				</tbody>
			</table>
		</div>
		
	</body>
</html>