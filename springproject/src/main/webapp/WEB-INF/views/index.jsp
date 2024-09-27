<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
</head>
<body>

	<div class="container">
		<h1 class="text-center">List of Products</h1>
		<div>
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">ProductID</th>
						<th scope="col">Product Name</th>
						<th scope="col">Product Description</th>
						<th scope="col">Product Price</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="item" items="${product}">
						<tr>
						<th scope="row">${item.id }</th>
						<td>${item.name }</td>
						<td>${item.description }</td>
						<td>${item.price }</td>
						<td><a href="${pageContext.request.contextPath }/update/${item.id}"><button class="text-center btn btn-warning">Update</button></a>
		 <a href="${pageContext.request.contextPath }/delete/${item.id}"><button class="text-center btn btn-danger">Delete</button></a>
		 </td>
					</tr>
					</c:forEach>

					
				</tbody>
			</table>
		</div>
		<div class="text-center">
			<a href="${pageContext.request.contextPath }/addProduct"><button class="text-center btn btn-primary">ADD Product</button></a>
		
		</div>
	</div>


</body>
</html>