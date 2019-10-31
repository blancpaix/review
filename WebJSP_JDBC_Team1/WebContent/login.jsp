<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Home</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<!-- Google fonts - Poppins for copy-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
<!-- orion icons-->
<link rel="stylesheet" href="css/orionicons.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="img/favicon.png?3">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>

<body>

	<!-- navbar-->
	<header class="header">
		<jsp:include page="/common/Top.jsp"></jsp:include>
	</header>

	<div class="d-flex align-items-stretch">
		<jsp:include page="/common/Left.jsp"></jsp:include>


		<div class="page-holder w-100 d-flex flex-wrap">
			<div class="container-fluid px-xl-5">

				<section class="py-5">
					<div class="row">



						<div class="row align-items-center py-5">
							<div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
								<div class="pr-lg-5">
									<img src="img/illustration.svg" alt="" class="img-fluid">
								</div>
							</div>
							<div class="col-lg-5 px-lg-4">
								<h1 class="text-base text-primary text-uppercase mb-4">I
									can make the Login Form!</h1>
								<h2 class="mb-4">get Away!</h2>
								<p class="text-muted">LOLOLOLOLOLOLOLOLOLOLOLOLOLOL</p>

								<form action="loginok.jsp" method="post" name="loginForm" id="loginForm">
									<div class="form-group mb-4">
										<input type="text" name="username"
											placeholder="Username or Email address"
											class="form-control border-0 shadow form-control-lg">
									</div>
									<div class="form-group mb-4">
										<input type="password" name="passowrd" placeholder="Password"
											class="form-control border-0 shadow form-control-lg text-violet">
									</div>

									<button type="submit" class="btn btn-primary shadow px-5">Log
										in</button>
								</form>

							</div>
						</div>
						
						
						
						

					</div>

					<footer
						class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100">
						<jsp:include page="/common/Bottom.jsp"></jsp:include>
					</footer>
			</div>
		</div>


		<!-- JavaScript files-->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/popper.js/umd/popper.min.js"> </script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
		<script src="vendor/chart.js/Chart.min.js"></script>
		<script src="js/js.cookie.min.js"></script>
		<script src="js/charts-home.js"></script>
		<script src="js/front.js"></script>
</body>
</html>
