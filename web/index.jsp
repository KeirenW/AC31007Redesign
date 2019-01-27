<%--
  Created by IntelliJ IDEA.
  User: Keiren
  Date: 27/01/2019
  Time: 14:51
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
</head>

<script>
	function resizeText(multiplier) {
		if (document.body.style.fontSize === "") {
			document.body.style.fontSize = "1.0em";
		}
		document.body.style.fontSize = parseFloat(document.body.style.fontSize) + (multiplier * 0.2) + "em";
	}
</script>

<body>
<!-- Navbar !-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
	<a class="navbar-brand" href="#">Dundee Computing Examination Board</a>
	<ul class="navbar-nav ml-auto">
		<!-- Accessibility !-->
		<li class="nav-item dropdown" style="padding-right: 10px">
			<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown">
				<i class="fas fa-universal-access fa-lg"></i>
			</a>
			<div class="dropdown-menu dropdown-menu-right">
				<a class="dropdown-item" href="#" onclick=resizeText(1)><i class="fas fa-text-height fa-2x"></i>
					Increase text size</a>
				<a class="dropdown-item" href="#" onclick=resizeText(-1)><i class="fas fa-text-height fa-fw"></i>
					Decrease text size</a>
				<a class="dropdown-item" href="index.jsp"><i class="fa fa-text-height fa-fw"></i> Normal text size</a>
			</div>
		</li>
		<!-- Notifications !-->
		<li class="nav-item dropdown" style="padding-right: 10px">
			<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown">
				<i class="fas fa-bell fa-lg"></i>
			</a>
			<div class="dropdown-menu dropdown-menu-right">
				<a class="dropdown-item" href="#"><i class="fas fa-comment"></i> No new comments</a>
			</div>
		</li>
		<!-- User !-->
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown">
				<i class="fas fa-user fa-lg"></i>
			</a>
			<div class="dropdown-menu dropdown-menu-right">
				<a class="dropdown-item" href="#"><i class="fas fa-user"></i> $Username</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#"><i class="fas fa-sign-out-alt"></i> Log out</a>
			</div>
		</li>
	</ul>
</nav>
<br>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Exams</h1>
			<hr>
		</div>
	</div>
	<br>
	<div class="row">
		<!-- Completed Exams !-->
		<div class="col-sm-4">
			<div class="card border-success">
				<div class="card-header bg-success text-light">
					<div class="col-xs-3">
						<i class="fas fa-check fa-5x fa-pull-left"></i>
					</div>
					<div class="col-xs-9 text-right text-light">
						<span style="font-size: 40px;">8</span>
						<p class="text-right">Completed Exams</p>
					</div>
				</div>
				<a href="#" class="text-success text-decoration-none">
					<div class="card-footer">
						<span>View Exams</span>
						<i class="fa fa-arrow-circle-right fa-pull-right"></i>
					</div>
				</a>
			</div>
		</div>
		<!-- In Progress Exams !-->
		<div class="col-sm-4">
			<div class="card border-warning">
				<div class="card-header bg-warning text-light">
					<div class="col-xs-3">
						<i class="fas fa-tasks fa-5x fa-pull-left"></i>
					</div>
					<div class="col-xs-9 text-right text-light">
						<span style="font-size: 40px;">2</span>
						<p class="text-right">In Progress Exams</p>
					</div>
				</div>
				<a href="#" class="text-warning text-decoration-none">
					<div class="card-footer">
						<span>View Exams</span>
						<i class="fa fa-arrow-circle-right fa-pull-right"></i>
					</div>
				</a>
			</div>
		</div>
		<!-- New Exams !-->
		<div class="col-sm-4">
			<div class="card border-danger">
				<div class="card-header bg-danger text-light">
					<div class="col-xs-3">
						<i class="fas fa-file fa-5x fa-pull-left"></i>
					</div>
					<div class="col-xs-9 text-right text-light">
						<span style="font-size: 40px;">4</span>
						<p class="text-right">New Exams</p>
					</div>
				</div>
				<a href="#" class="text-danger text-decoration-none">
					<div class="card-footer">
						<span>View Exams</span>
						<i class="fa fa-arrow-circle-right fa-pull-right"></i>
					</div>
				</a>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Administrator tools</h1>
			<hr>
		</div>
	</div>
	<br>
	<div class="row">
		<!-- Add new user !-->
		<div class="col-sm-4">
			<div class="card border-dark">
				<div class="card-header text-center text-light bg-dark">
					<h4 class="card-title">Add new user</h4>
				</div>
				<div class="card-body">
					<form id="newUser">
						<div class="form-group">
							<label for="firstName">First name(s)</label>
							<input type="text" class="form-control" id="firstName" required>
						</div>
						<div class="form-group">
							<label for="surname">Surname</label>
							<input type="text" class="form-control" id="surname" required>
						</div>
						<div class="form-group">
							<label for="email">Dundee University E-mail</label>
							<input type="email" class="form-control" id="email" required>
						</div>
						<div class="form-group">
							<label for="password">Password</label>
							<input type="password" class="form-control" id="password" required>
						</div>
						<br>
						<button type="submit" class="btn btn-block btn-success">Submit</button>
					</form>
				</div>
			</div>
		</div>
		<!-- Assign user !-->
		<div class="col-sm-4">
			<div class="card border-dark">
				<div class="card-header text-center text-light bg-dark">
					<h4 class="card-title">Assign user</h4>
				</div>
				<div class="card-body">
					<form id="assignUser">
						<div class="form-group">
							<label for="role">Role</label>
							<select class="custom-select" id="role">
								<option selected>Select role</option>
								<option>Internal Moderator</option>
								<option>External Moderator</option>
								<option>Exam Vetting Committee Member</option>
							</select>
						</div>
						<div class="form-group">
							<label for="user">User</label>
							<select class="custom-select" id="user">
								<option selected>Select user</option>
								<option>User 1</option>
								<option>User 2</option>
								<option>Cont...</option>
							</select>
						</div>
						<div class="form-group">
							<label for="examAssign">Exam</label>
							<select class="custom-select" id="examAssign">
								<option selected>Select exam</option>
								<option>AC31007 - Exam</option>
								<option>AC31007 - Resit</option>
								<option>Cont...</option>
							</select>
						</div>
						<br>
						<button type="submit" class="btn btn-block btn-success">Assign</button>
					</form>
				</div>
			</div>
		</div>
		<!-- View unsigned exams !-->
		<div class="col-sm-4">
			<div class="card border-dark">
				<div class="card-header text-center text-light bg-dark">
					<h4 class="card-title">View in progress exams</h4>
				</div>
				<div class="card-body">
					<form id="viewExam">
						<div class="form-group">
							<label for="stage">Stage</label>
							<select class="custom-select" id="stage">
								<option selected>Select stage</option>
								<option>Internal Moderating</option>
								<option>External Moderating</option>
								<option>Exam Vetting Committee</option>
							</select>
						</div>
						<div class="form-group">
							<label for="examView">Exam</label>
							<select class="custom-select" id="examView">
								<option selected>Select exam</option>
								<option>AC31007 - Exam</option>
								<option>AC31007 - Resit</option>
								<option>Cont...</option>
							</select>
						</div>
						<br>
						<button type="submit" class="btn btn-block btn-success">View</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
</body>
</html>
