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
				<h1 class="text-center mb-3">User Registration Page</h1>
				
				<form action="${pageContext.request.contextPath }/login-cred" method="post">
					<div class="form-group">
						<label for="discription">Email </label>
						<input type="email"
							class="form-control" id="email" name="email"
							aria-describedby="emailHelp"
							placeholder="Enter Email here "
						>
					</div>
					<div class="form-group">
						<label for="password">Enter Password </label>
						 <input type="password"
							class="form-control" id="password" name="password"
							aria-describedby="emailHelp" placeholder="Enter password here" >
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