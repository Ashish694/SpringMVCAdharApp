<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
	<div class="row">
	<form action="./aadhar" method="post">
	<input type="hidden" name="page" value="educationaldetails"/>
	<table cellpadding="5px" cellspacing="5px">
		<tr>
			<th colspan="2">Educational Information</th>
		</tr>
		
		<tr>
			<td>Enter Languages Known</td>
			<td><input type="text" name="languages"/></td>
		</tr>
		
		<tr>
			<td>Enter Education Details</td>
			<td><input type="text" name="education"/></td>
		</tr>
		
		<tr>
			<td colspan="2"><input type="submit" value="SUBMIT"/></td>
		</tr>
	</table> 
	</form>
	</div>
	</div>
</body>
</html>