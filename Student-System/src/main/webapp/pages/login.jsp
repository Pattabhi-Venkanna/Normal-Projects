<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher</title>
<link href="css/school.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="head">
		<h2>This is simple school website</h2>
		<button class="btn-2">
			<i class="fa fa-home"></i><a href="/">Home</a>
		</button>
	</div>
	<div class="top">
		<div class="top-left">
			<h1>Laxmi Puthra High School</h1>
			<p>Here this is an simple school website with login and Crud
				Student using spring boot, mysql, Hibernate, jsp, css.</p>
			<form action="homepage" method="post">
				<div class="middle">
					<input type="number" placeholder="Enter user id" name="userid"><br>
					<input type="password" placeholder="enter your password" name="password"><br>
					<button>submit</button>
				</div>

			</form>
		</div>
		<div class="top-right">
			<img alt="" src="/images/teacher.png">
		</div>
	</div>
	<p class="colo">userid:9533 ,password:Abhi123</p>
	<p class="colo">userid:9522 ,password:123Abhi</p>
</body>
</html>