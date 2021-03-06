<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>ServiceSquare</title>


<style type="text/css">
#sel {
	width: 60%;
	background-image: url("img/1.png");
	padding: 20px 15px;
	opacity: 0.8;
	z-index: -1;
	margin: 0 auto;
}
</style>

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

<!-- Custom Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"
	type="text/css">

<!-- Plugin CSS -->
<link rel="stylesheet" href="css/animate.min.css" type="text/css">
<link href="css/dim.css" rel="stylesheet">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/creative.css" type="text/css">
<script type="text/javascript" src="js/dim.js"></script>


</head>

<body id="page-top">

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">ServiceSquare</a> <a
					class="navbar-brand" href="index.jsp">Home</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#c" onclick="lightbox_open();">Login/Register</a>
					</li>
					<li><a href="faq.html">FAQ</a></li>

					<li><a href="#contact">Contact</a></li>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<div id="light" class="white_content">

		<p style="padding-left: 620px; padding-top: 1px;">
			<a href="javascript:void(0)" onclick="lightbox_close();">
			<img src="img/close.png"></a>
		</p>
		<div id="left_side">
			<form name="login" action="session" method="post">
				<!-- <input type='text' name='token' id='token' style='display:none;'> -->
				<label>Username</label> <input type="text" name="username">
				<br /> <label>Password</label> <input type="password"
					name="password"> <br /> <br /> <br />
				<button type="submit">Log In</button>
			</form>
		</div>
		<div id="right_side" style="margin-top: -10px;">
			<h3>
				<a href="newuser.htm"><img src="img/register.png"></a>
			</h3>
		</div>
	</div>

	<div id="fade" class="black_overlay"></div>

	<header>


		<div class="header-content">
			<div id="sel">
				<form>
					<div class="form-group">

						<select class="form-control">
							<option value="">Select Your City</option>
							<option value="bangalore">Bangalore</option>
							<option value="gurgaon">Gurgaon</option>
							<option value="pune">Pune</option>
							<option value="kolkata">Kolkata</option>
						</select>
					</div>
					<div class="form-group">
						<select class="form-control">
							<option value="">What Service you need?</option>
							<option value="plumbing">Plumbing</option>
							<option value="electrical">Electrical</option>
							<option value="house cleaning">House Cleaning</option>
							<option value="computer repair">Computer Repair</option>
						</select>
					</div>

					<button type="submit" class="btn btn-default">Book a
						Service</button>
				</form>
			</div>
		</div>
	</header>

	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">At Your Service</h2>
					<hr class="primary">
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<a href="plumber.html" style="color: black; text-decoration: none"><img
							src="img/plumbing.png">
							<h3>Plumbing</h3></a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<a href="electrical.html"
							style="color: black; text-decoration: none"><img
							src="img/electrical.png">
							<h3>Electrical</h3></a>


					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<a href="house.html" style="color: black; text-decoration: none">
						<img src="img/house.png">
							<h3>Home Cleaning</h3></a>

					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<a href="computer.html"
							style="color: black; text-decoration: none">
							<img src="img/computer.png">
							<h3>Computer Repair</h3></a>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading" style="color: black">Let's Get In
						Touch!</h2>
					<hr class="primary">
					<p>Ready to start your next project with us? That's great! Give
						us a call or send us an email and we will get back to you as soon
						as possible!</p>
				</div>
				<div class="col-lg-4 col-lg-offset-2 text-center">
					<i class="fa fa-phone fa-3x wow bounceIn"></i>
					<p style="color: black">123-456-6789</p>
				</div>
				<div class="col-lg-4 text-center">
					<i class="fa fa-envelope-o fa-3x wow bounceIn" data-wow-delay=".1s"></i>
					<p>
						<a href="feedback.html" style="color: black">feedback@servicesquare.com</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="js/jquery.easing.min.js"></script>
	<script src="js/jquery.fittext.js"></script>
	<script src="js/wow.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="js/creative.js"></script>

</body>

</html>

