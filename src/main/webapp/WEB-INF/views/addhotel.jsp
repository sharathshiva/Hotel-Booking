<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
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
	<div class="card"
		style="width: 50rem; padding-left: 75px; border-color: white">
		<div class="card-header border-dark "
			style="text-align: center; color: rgb(100%, 50%, 50%)">
			<h4>Hotel</h4>
		</div>

		<div class="jumbotron">
			<form>
				<div class="form-group">
					<label for="hotelname2">Hotel name</label> <input type="text"
						class="form-control" id="hotelname2" aria-describedby="emailHelp"
						name="hotelname" placeholder="Enter the hotel name">
				</div>
				<div class="form-group">
					<label for="hotelplace2">Hotel Place</label> <input type="text"
						class="form-control" id="hotelplace2" aria-describedby="emailHelp"
						name="hotelname" placeholder="Enter the hotel place">
				</div>
				<div class="form-group">
					<label for="hotelroom2">No of Rooms</label> <input type="text"
						class="form-control" id="hotelplace2" aria-describedby="emailHelp"
						name="hotelname" placeholder="Enter the no of rooms">
				</div>
				<div class="form-group">
					<label for="hotelname2">Hotel Image</label>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
						</div>
						<div class="custom-file">
							<input type="file" class="custom-file-input"
								id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
							<label class="custom-file-label" for="inputGroupFile01">Choose
								image(.jpg) file</label>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label for="exampleFormControlTextarea1">Description</label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
						rows="3"></textarea>
				</div>
				<div class="form-group">
					<label for="hotelname2">Features</label><br>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox"
							id="inlineCheckbox1" value="option1"> <i
							class="material-icons" style="font-size: 50px">wifi</i>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox"
							id="inlineCheckbox2" value="option2"> <i
							class="material-icons" style="font-size: 50px">restaurant</i> <i
							class="material-icons" style="font-size: 50px">room_service</i>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox"
							id="inlineCheckbox3" value="option3"> <i
							class="material-icons" style="font-size: 50px">toys </i>
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>
</body>
</html>