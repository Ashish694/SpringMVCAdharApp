<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="<c:url value="/res/css/bootstrap.css"/>"/>
</head>
<style type="text/css">
	.container
	{
	width: 500px;
	margin-top:100px;
	padding:20px;
	border: 5px solid black;
	}
</style>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img alt="image" src="<c:url value="/res/images/aadhar.jpg"/>" height="310px" width="190px" />
			</div>
			<div class="col-md-7">
				<form action="./login" method="post">
				  <div class="form-group">
				    <label for="InputEmail1">EMAIL ADDRESS</label>
				    <input type="email" name="email" value="${emailValue}" class="form-control" id="InputEmail1" aria-describedby="emailHelp">
				    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
				  </div>
				  <div class="form-group">
				    <label for="InputPassword1">PASSWORD</label>
				    <input name="password" type="password" value="${passwordValue}" class="form-control" id="InputPassword1">
				  </div>
				  <div class="form-group form-check">
				    <input type="checkbox" class="form-check-input" id="Check1">
				    <label class="form-check-label" for="Check1">Check me out</label>
				  </div>
				  <button type="submit" class="btn btn-primary">LOGIN</button>
				  <a href="./signup" class="btn btn-primary">SIGNUP</a><br>
				  <a href="#" style="color: blue; text-decoration: none"><b>Forgot Password? Click to reset</b></a>
				  
				</form>
			</div>
		</div>
		
	<div class="row">
	<div class="col-md-12">
		<div style="color: red; font-weight: bold;">${error}</div>
		<div style="color: green; font-weight: bold;">${success}</div>
	</div>
	</div>
	</div><!--container -->
</body>
</html>