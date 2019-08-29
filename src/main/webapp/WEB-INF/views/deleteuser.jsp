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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
		<a class="navbar-brand" href="#" style="padding-left: 3%">
            <img src="./resources/images/cities.jpg" width="50" height="30"><b
			style="padding-left: 20%">Hotelbooking</b>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<form class="form-inline my-2 my-lg-n1" style="padding-left: 5%">
			<input class="form-control mr-sm-2" size="50" type="search" name="searchotel"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
		<div class="collapse navbar-collapse" id="navbarNavDropdown"
			style="padding-left: 10%;">
			<ul class="navbar-nav" style="padding-top: 1%">
				<li class="nav-item">
                    <a class="nav-link" href="accounts/register"><h5>Register</h5>
						<span class="sr-only">(current)</span></a>
                </li>
				<li class="nav-item"><a class="nav-link" href="accounts/login"><h5>Login</h5></a>
				</li>
			</ul>
		</div>
        <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Profile
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="./update">Update User</a>
    <a class="dropdown-item" href="./delete">Delete User</a>
  </div>
</div>
	</nav>
    <br>
    <div class="container">
        <div class="col-sm-4">
            <div class="card border-alert mb-3">
                <div class="card-header border-alert " style="text-align: center; color: rgb(100%,50%,50%)"><h4>Alore OS</h4></div>
                    <div class="card-body">
                       <form action="./delete" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">User Id</label>
                                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter user id">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                             <button type="submit" class="btn btn-primary">Delete</button>
                        </form>
                    </div>    
                </div>    
            </div> 
        </div>    
    </div>
</body>
</html>