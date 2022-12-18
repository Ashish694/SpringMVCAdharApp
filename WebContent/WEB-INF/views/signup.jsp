<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/res/css/bootstrap.css"/>"/>
</head>
<style type="text/css">
.container {
	width: 500px;
	margin-top: 100px;
	padding: 20px;
	border: 5px solid black;
}
</style>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img alt="image" src="<c:url value="/res/images/aadhar.jpg"/>" height="300px" width="190px" />
			</div>
			<div class="col-md-7">
				<form action="./signupUser" method="post">
					<div class="form-group">
						<label for="InputName">NAME</label> 
						<input type="text" name="name" value="${nameValue}" class="form-control" id="InputName">
					</div>
					
					<div class="form-group">
						<label for="InputEmail">EMAIL</label> 
						<input type="email" name="email" value="${emailValue}" class="form-control" id="InputEmail" aria-describedby="emailHelp">
						<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					</div>
					<div class="form-group">
						<label for="InputPhone">PHONE NO.</label> 
						<input type="text" name="phone" value="${phoneValue}" class="form-control" id="InputPhone" aria-describedby="emailHelp">
					</div>
					
					<button type="submit" class="btn btn-primary">SIGNUP</button><br>
				</form>
			</div>
		</div>
		<div class="row">
		<div class="col-md-12">
			<div style="color: red">${error}</div>
		</div>
		</div>
	</div>	
</body>
</html>