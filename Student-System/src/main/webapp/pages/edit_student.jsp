<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student | Student System</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	<link href="css/school.css"
        rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary ">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Student Management System</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="addStudent">Edit
							Student</a></li>
							<li class="nav-item log "><a href="/" class="btn-3 ">Logout</a></li>
				</ul>

			</div>
		</div>
	</nav>

	<div class="alert alert-primary" role="alert">
	<h1>${msg}</h1>
	</div>
	

	<div class="container">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card">
					<div class="card-body">
						<h1 class="text-center text-primary bg-light">Edit  ${student.fName} profile</h1>
						<form action="updateStudent" method="post" >
						<input type="hidden" value="${student.id}" name="id">${student.id}
							<div class="form-group">
								<label>Enter First Name:-</label><input type="text"
									class="form-control" name="fName" value="${student.fName}">
							</div>
							<div class="form-group">
								<label>Enter Last Name:-</label><input type="text"
									class="form-control" name="lName" value="${student.lName}">
							</div>
							<div class="form-group">
								<label>Enter Age:-</label><input type="text"
									class="form-control" name="age" value="${student.age}">
							</div>
							<div class="form-group">
								<label>Enter Address:-</label><input type="text"
									class="form-control" name="address" value="${student.address}">
							</div>
							<div class="form-group">
								<label>Enter Phone Number:-</label><input type="text"
									class="form-control" name="phno" value="${student.phno}">
							</div>
							<button class="btn btn-primary btn-flex ">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>






</body>
</html>