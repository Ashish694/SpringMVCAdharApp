<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value="/res/css/bootstrap.css"/>"/>
<title>NEW AADHAR REGISTRATION</title>

</head>
<style type="text/css">
	.container 
	{
	width: 600px;
	margin-top: 50px;
	padding: 20px;
	}
	label 
	{
	font-weight: bold;
	}
</style>
<body>
	<div class="container">
	<form action="./submitaadhar" method="post">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>NAME</label>
					<input type="text" class="form-control" name="name" value="${nameValue}"/>
				</div>
			</div>
			
			<div class="col-md-6">
				<div class="form-group">
					<label>ADDRESS</label>
					<textarea class="form-control" name="address" rows="1">${addressValue}</textarea>
				</div>
			</div>
		</div><!-- End of first row -->
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>DOB</label>
					<input type="date" class="form-control" name="dob" value="${dobValue}"/>
				</div>
			</div>
			
			<div class="col-md-6">
				<div class="form-group">
					<label>CITY</label>
					<select class="custom-select" name="city">
						<option value="Nagpur" ${cityValue eq 'Nagpur' ? 'selected' : ''}>NAGPUR</option>
						<option value="Pune" ${cityValue eq 'Pune' ? 'selected' : ''}>PUNE</option>
						<option value="Mumbai" ${cityValue eq 'Mumbai' ? 'selected' : ''}>MUMBAI</option>
						<option value="Delhi" ${cityValue eq 'Delhi' ? 'selected' : ''}>DELHI</option>
					</select>
				</div>
			</div>
		</div><!-- End of second row -->
		
		<div class="row">
			<div class="col-md-6">
			<label>GENDER</label>
				<div class="form-group">
					<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="gender" value="Male" ${genderValue eq 'Male' ? 'checked' : ''}/>MALE
					</div>
					<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="gender" value="Female" ${genderValue eq 'Female' ? 'checked' : ''}/>FEMALE
					</div>
				</div>
			</div>
			
			<div class="col-md-6">
				<div class="form-group">
					<label>EDUCATION</label>
					<input type="text" class="form-control" name="education" value="${educationValue}"/>
				</div>
			</div>
		</div><!-- End of third row -->
		
		<div class="row">
			<div class="col-md-6">
			<label>HOBBIES</label>
				<div class="form-group">
					<div class="form-check">		
						<input class="form-check-input" type="checkbox" name="hobbies" value="dancing" ${fn:contain(hobbiesValue, 'dancing')? 'checked' : ''} />DANCING
					</div>
					<div class="form-check">		
						<input class="form-check-input" type="checkbox" name="hobbies" value="singing" ${fn:contain(hobbiesValue, 'singing')? 'checked' : ''} />SINGING
					</div>
					<div class="form-check">		
						<input class="form-check-input" type="checkbox" name="hobbies" value="playing" ${fn:contain(hobbiesValue, 'playing')? 'checked' : ''} />PLAYING
					</div>
					<div class="form-check">		
						<input class="form-check-input" type="checkbox" name="hobbies" value="reading" ${fn:contain(hobbiesValue, 'reading')? 'checked' : ''} />READING
					</div>
				</div>
			</div>
			
			<div class="col-md-6">
				<div class="form-group">
					<label>LANGUAGES KNOWN</label>
					<select class="custom-select" name="languages" multiple="multiple">
						<option value="English" ${fn:contain(languagesValue, 'English')? 'selected' : ''}>ENGLISH</option>
						<option value="Hindi" ${fn:contain(languagesValue, 'Hindi')? 'selected' : ''}>HINDI</option>
						<option value="Marathi" ${fn:contain(languagesValue, 'Marathi')? 'selected' : ''}>MARATHI</option>
					</select>
				</div>
			</div>
		</div><!-- End of fourth row -->
		
		<div class="row">
			<div class="col-md-12" style="text-align: center;">
				<input type="submit" value="SUBMIT AADHAR DETAILS" class="btn btn-primary"/>
			</div>
		</div>
	</form>
	</div><!-- End of container -->
</body>
</html>