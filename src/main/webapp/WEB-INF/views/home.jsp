<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Home</title>
</head>
<style>
.name {
	background-color: royalblue;
	color: white;
	border-radius: 5px;
}
</style>
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
		<a class="navbar-brand" href="#" style="padding-left: 3%"> <i
			class="material-icons" style="color: rgb(100%, 50%, 50%)">airline_seat_flat</i>
			Hotelbooking
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="dropdown" style="padding-left: 650px">
			<button class="btn btn-secondary dropdown-toggle" type="button"
				id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false">Profile</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="./update">Update</a> <a
					class="dropdown-item" href="./delete">delete</a>
					<a class="dropdown-item" href="./page">Admin</a>
			</div>
		</div>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="./register"
					style="padding-left: 50px"><h5>Register</h5> <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="./login"><h5>Login</h5></a>
				</li>
			</ul>
		</div>

	</nav>
	<div class="alert alert-primary" role="alert"
		style="text-align: center">
		<h3>
			Welcome to Allore <span class="name"><b>OS</b></span>
		</h3>
		<h5 style="padding-left: 450px">
			<small>-Finds the best hotels below for you</small>
		</h5>
		<br>
		<form class="form-inline my-2 my-lg-n1" style="padding-left: 5%;"
			action="" method="get">
			<input class="form-control mr-sm-2" size="50" type="search"
				name="searchotel" placeholder="Search" aria-label="Search"
				style="margin-left: 100px; width: 300px; height: 50px; border-radius: 10px">
			<input class="form-control mr-sm-2" size="50" type="date" name="date"
				placeholder="Enter the date" aria-label="Search"
				style="width: 300px; height: 50px; border-radius: 10px"> <input
				class="form-control mr-sm-2" size="50" type="number" name="rooms"
				placeholder="Enter the no of rooms" aria-label="Search"
				style="width: 300px; height: 50px; border-radius: 10px">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
	<br>
	<br>
	<div class="row" style="padding-left: 25px;">
		<div class="col-sm-4">
			<div class="card border-success mb-3" style="border-radius: 10px">
				<div class="card-header border-dark "
					style="text-align: center; color: rgb(100%, 50%, 50%)">
					<h4>hotelName</h4>
				</div>
				<div class="card-body">
					<img src="./resources/images/image.jpg" 
						class="card-img-top" alt="image not found" height="250px"> <br>
					<br>
					<h5 class="card-title">hotel.place</h5>
					<p class="card-text">hotel.description</p>
				</div>
				<div class="card-header">
					<i class="material-icons" style="font-size: 40px">toys</i> <i
						class="material-icons" style="font-size: 40px; padding-left: 50px">wifi</i>
					<i class="material-icons"
						style="font-size: 40px; padding-left: 50px">restaurant</i> <i
						class="material-icons" style="font-size: 40px">room_service</i>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="card border-success mb-3" style="border-radius: 10px">
				<div class="card-header border-dark "
					style="text-align: center; color: rgb(100%, 50%, 50%)">
					<h4>hotelName</h4>
				</div>
				<div class="card-body">
					<img src="./resources/images/2.jpg" style="border-radius: 10px"
						class="card-img-top" alt="image not found" height="250px"> <br>
					<br>
					<h5 class="card-title">hotel.place</h5>
					<p class="card-text">hotel.description</p>
				</div>
				<div class="card-header">
					<i class="material-icons" style="font-size: 40px">toys</i> <i
						class="material-icons" style="font-size: 40px; padding-left: 50px">wifi</i>
					<i class="material-icons"
						style="font-size: 40px; padding-left: 50px">restaurant</i> <i
						class="material-icons" style="font-size: 40px">room_service</i>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="card border-success mb-3" style="border-radius: 10px">
				<div class="card-header border-dark "
					style="text-align: center; color: rgb(100%, 50%, 50%)">
					<h4>hotelName</h4>
				</div>
				<div class="card-body">
					<img src="./resources/images/3.jpg" style="border-radius: 10px"
						class="card-img-top" alt="image not found" height="250px"> <br>
					<br>
					<h5 class="card-title">hotel.place</h5>
					<p class="card-text">hotel.description</p>
				</div>
				<div class="card-header">
					<i class="material-icons" style="font-size: 40px">toys</i> <i
						class="material-icons" style="font-size: 40px; padding-left: 50px">wifi</i>
					<i class="material-icons"
						style="font-size: 40px; padding-left: 50px">restaurant</i> <i
						class="material-icons" style="font-size: 40px">room_service</i>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="card border-success mb-3" style="border-radius: 10px">
				<div class="card-header border-dark "
					style="text-align: center; color: rgb(100%, 50%, 50%)">
					<h4>hotelName</h4>
				</div>
				<div class="card-body">
					<img src="./resources/images/4.jpg" style="border-radius: 10px"
						class="card-img-top" alt="image not found" height="250px"> <br>
					<br>
					<h5 class="card-title">hotel.place</h5>
					<p class="card-text">hotel.description</p>
				</div>
				<div class="card-header">
					<i class="material-icons" style="font-size: 40px">toys</i> <i
						class="material-icons" style="font-size: 40px; padding-left: 50px">wifi</i>
					<i class="material-icons"
						style="font-size: 40px; padding-left: 50px">restaurant</i> <i
						class="material-icons" style="font-size: 40px">room_service</i>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="card border-success mb-3" style="border-radius: 10px">
				<div class="card-header border-dark "
					style="text-align: center; color: rgb(100%, 50%, 50%)">
					<h4>hotelName</h4>
				</div>
				<div class="card-body">
					<img src="./resources/images/5.jpg" style="border-radius: 10px"
						class="card-img-top" alt="image not found" height="250px"> <br>
					<br>
					<h5 class="card-title">hotel.place</h5>
					<p class="card-text">hotel.description</p>
				</div>
				<div class="card-header">
					<i class="material-icons" style="font-size: 40px">toys</i> <i
						class="material-icons" style="font-size: 40px; padding-left: 50px">wifi</i>
					<i class="material-icons"
						style="font-size: 40px; padding-left: 50px">restaurant</i> <i
						class="material-icons" style="font-size: 40px">room_service</i>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="card border-success mb-3" style="border-radius: 10px">
				<div class="card-header border-dark "
					style="text-align: center; color: rgb(100%, 50%, 50%)">
					<h4>hotelName</h4>
				</div>
				<div class="card-body">
					<img src="./resources/images/6.jpg" style="border-radius: 10px"
						class="card-img-top" alt="image not found" height="250px"> <br>
					<br>
					<h5 class="card-title">hotel.place</h5>
					<p class="card-text">hotel.description</p>
				</div>
				<div class="card-header">
					<i class="material-icons" style="font-size: 40px">toys</i> <i
						class="material-icons" style="font-size: 40px; padding-left: 50px">wifi</i>
					<i class="material-icons"
						style="font-size: 40px; padding-left: 50px">restaurant</i> <i
						class="material-icons" style="font-size: 40px">room_service</i>
				</div>
			</div>
		</div>
	</div>
</body>
</html>