<%--
  Created by IntelliJ IDEA.
  User: Keiren
  Date: 27/01/2019
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>INDEX</title>
	<!-- JQUERY !-->
	<script src="./vendor/jquery/jquery.min.js"></script>
	<!-- BOOTSTRAP !-->
	<link rel="stylesheet" href="./vendor/bootstrap/css/bootstrap.min.css">
	<script src="./vendor/bootstrap/js/bootstrap.min.js"></script>
	<!-- FONT AWESOME !-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
	
	<style>
		html,
		body {
			height: 100%;
		}
		
		body {
			display: -ms-flexbox;
			display: flex;
			-ms-flex-align: center;
			align-items: center;
			padding-top: 40px;
			padding-bottom: 40px;
			background-color: #f5f5f5;
		}
		
		.form-signin {
			width: 100%;
			max-width: 330px;
			padding: 15px;
			margin: auto;
		}
	</style>
</head>

<body class="text-center">
<div class="container">
	<form class="form-signin">
		<h1 class="mb-4">🐦</h1>
		<h1 class="h3 mb-3 font-weight-normal">Sign in</h1>
		<div class="form-group">
			<label for="inputEmail" class="sr-only">Email address</label>
			<input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
		</div>
		<div class="form-group">
			<label for="inputPassword" class="sr-only">Password</label>
			<input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
		</div>
		<div class="form-group">
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
		</div>
		<div class="form-group text-right">
			<a href="#" class="text-dark ">Forgot password?</a>
		</div>
		<p class="mt-5 mb-3 text-muted">Dundee Computing Examination Board</p>
	</form>
</div>
</body>
</html>
