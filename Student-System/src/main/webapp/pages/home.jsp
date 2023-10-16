<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student System | Home page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	<link href="css/school.css"
        rel="stylesheet">
</head>
<body>
	<h1 class="colo">List of the Students</h1>

<%-- 	<h2><%=application.getServerInfo()%><br>
	</h2>
	<h2><%=JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion()%>
		<br>
	</h2> --%>

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary ">
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
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="addStudent">Add Student</a></li>
						<li class="nav-item log "><a href="/" class="btn-3 ">Logout</a></li>
				</ul>

			</div>
		</div>
	</nav>


	<div class="alert alert-info" role="alert">
	<h1>${msg}</h1>
	
	
	</div>




	<!-- table -->
	<div class="container">
		<table class="table">
			<thead class=" bg-primary text-light">
				<tr>
					<th scope="col">id</th>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Age</th>
					<th scope="col">Address</th>
					<th scope="col">Phone Number</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="student" items="${students}">
					<tr>
						<td>${student.id }</td>
						<td>${student.fName }</td>
						<td>${student.lName }</td>
						<td>${student.age }</td>
						<td>${student.address }</td>
						<td>${student.phno }</td>
						<td><a type="submit" class="btn btn-success btn-sm"
							href="edit-${student.id}">Edit</a> <a type="Submit"
							class="btn btn-success btn-sm" href="delete-${student.id}">Delete
								</a></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>