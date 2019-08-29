<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Register</title>
</head>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
		<a class="navbar-brand" href="#" style="padding-left: 3%"> <img
			src="./resources/images/cities.jpg" width="50" height="30"><b
			style="padding-left: 20%">Hotelbooking</b>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown"
			style="padding-left: 10%;">
			<ul class="navbar-nav" style="padding-top: 1%">
				<li class="nav-item"><a class="nav-link"
					href="./register"><h5>Register</h5> <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="./login"><h5>Login</h5></a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="jumbotron">
		<form action="./register" method="post">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputfirstname">Firtsname</label> <input type="text"
						class="form-control" id="inputfirstname" name="firstname"
						placeholder="Enter your First name">
				</div>
				<div class="form-group col-md-6">
					<label for="inputlastname">Lastsname</label> <input type="text"
						class="form-control" id="inputlastname" name="lastname"
						placeholder="Enter your Last name">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">Email</label> <input type="email"
						class="form-control" id="inputEmail4" placeholder="Email">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Password</label> <input type="password"
						class="form-control" id="inputPassword4" placeholder="Password">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputCity">City</label> <input type="text"
						class="form-control" id="inputCity">
				</div>
				<div class="form-group col-md-4">
					<label for="inputState">State</label> <select id="inputState"
						class="form-control">
						<option selected>Choose...</option>
						<option>Karnataka</option>
						<option>Tamilnadu</option>
						<option>Kerala</option>
						<option>Andhrapradesh</option>
						<option>Telangana</option>
					</select>
				</div>
				<div class="form-group col-md-2">
					<label for="inputZip">Zip</label> <input type="number"
						class="form-control" id="inputZip">
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Register</button>
		</form>
	</div>
</body>
</html>