<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Change the detail of product</h1>
				
				<form action="${pageContext.request.contextPath }/handle-product" method="post">
				<input type="hidden" name="id" id="id" value="${product.id }"/>
					<div class="form-group">
						<label for="name">Product Name </label> 
						<input type="text"
							class="form-control" id="name" name="name"
							aria-describedby="emailHelp"
							value="${product.name }"
						>
					</div>
					<div class="form-group">
						<label for="discription">Description </label>
						<textarea class="form-control" name="description" id="description"
							rows="5"  
							>${product.description }</textarea>
					</div>
					<div class="form-group">
						<label for="price">Price </label>
						 <input type="number"
							class="form-control" id="price" name="price"
							aria-describedby="emailHelp" value="${product.price }" >
					</div>
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>