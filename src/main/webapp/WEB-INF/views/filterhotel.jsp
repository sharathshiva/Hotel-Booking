<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Search Hotels</title>
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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<body>
	<nav class="navbar navbar-expand-lg navbar-blue  bg-dark">
		<a class="navbar-brand" href="./home"> <img
			src="‪./resources/images/cities.jpg" width="30"
			height="30" alt="not found"> HotelBooking
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown"
			style="padding-left: 750px">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="./admin">Admin<span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item active"><a class="nav-link" href="./filter">Filter</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Hotels </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="./addhotel">Add Hotel</a> <a
							class="dropdown-item" href="./addhotel">Update Hotel</a> <a
							class="dropdown-item" href="./deletehotel">Delete Hotel</a>
					</div></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<form action="./filter" method="get">
				<h2 class="display-4">Filter Hotels</h2>
				<div class="form-row">
					<div class="form-group col-sm-4">
						<label for="inputCity">Check</label> <input type="date"
							class="form-control" id="inputCity" placeholder="enter the date">
					</div>
					<div class="form-group col-sm-4">
						<label for="inputCity">City</label> <input type="text"
							class="form-control" id="inputCity" placeholder="enter the city">
					</div>
					<div class="form-group col-sm-4">
						<label for="inputZip">No Of Rooms</label> <input type="number"
							class="form-control" id="inputZip"
							placeholder="enter the no of rooms">
					</div>
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Features</label>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="inlineRadioOptions" id="inlineRadio1" value="option1">
						<label class="form-check-label" for="inlineRadio1"><i
							class="material-icons" style="font-size: 50px">wifi</i></label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="inlineRadioOptions" id="inlineRadio2" value="option2">
						<label class="form-check-label" for="inlineRadio2"><i
							class="material-icons" style="font-size: 50px">restaurant</i> <i
							class="material-icons" style="font-size: 50px">room_service</i></label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="inlineRadioOptions" id="inlineRadio3" value="option3">
						<label class="form-check-label" for="inlineRadio3"><i
							class="material-icons" style="font-size: 50px">toys </i></label>
					</div>
				</div>
				<button type="button" class="btn btn-primary">Filter</button>
			</form>
		</div>
	</div>
</body>
</html>