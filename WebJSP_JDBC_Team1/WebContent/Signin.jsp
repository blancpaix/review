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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
	//jquery 로 간단하게 유효성 check 하기
	$(function() {
		$('#joinForm').submit(function() {
			//alert("가입");
			if ($('#id').val() == "") { // 아이디 검사
				alert('ID를 입력해 주세요.');
				$('#id').focus();
				return false;
			} else if ($('#pwd').val() == "") { // 비밀번호 검사
				alert('PWD를 입력해 주세요.');
				$('#pwd').focus();
				return false;
			} else if ($('#mname').val() == "") { // 이름 검사
				alert('mname를 입력해 주세요.');
				$('#mname').focus();
				return false;
			} else if ($('#age').val() == "") { // 나이 검사
				alert('age를 입력해 주세요.');
				$('#age').focus();
				return false;
			} else if ($('#email').val() == "") { // 우편번호
				alert('email를 입력해 주세요.');
				$('#email').focus();
				return false;
			}

		});
	});
</script>

<style type="text/css">
table {
	border: solid 2px black;
	border-collapse: collapse;
}

tr {
	border: solid 1px blue;
	background-color: white;
	color: black;
}

td {
	border: solid 1px red;
}
</style>

</head>

<body>

	<!-- navbar-->
	<header class="header">
		<jsp:include page="/common/Top.jsp"></jsp:include>
	</header>

	<div class="d-flex align-items-stretch">
		<jsp:include page="/common/Left.jsp"></jsp:include>


		<div class="page-holder w-100 d-flex flex-wrap">
			<div class="container-fluid px-xl-12">

				<section class="py-12">
					<div class="row"></div>

					<div class="row mb-4">
						<div class="col-lg-7 mb-4 mb-lg-0">
							<div class="card">
								<div class="card-header">
									<h2 class="h6 text-uppercase mb-0">SIGN IN HERE!</h2>
								</div>
								<div class="card-body">
									<form action="Signinok.jsp" method="post" name="SigninForm" id="SigninForm">

										<div class="form-group mb-4">
											<input type="text" name="userId" placeholder="UserId"
												class="form-control border-0 shadow form-control-lg">
										</div>

										<div class="form-group mb-4">
											<input type="password" name="passowrd" placeholder="Password"
												class="form-control border-0 shadow form-control-lg text-violet">
										</div>

										<div class="form-group mb-4">
											<input type="password" name="passowrdCheck"
												placeholder="Password Check"
												class="form-control border-0 shadow form-control-lg text-violet">
										</div>

										<div class="form-group mb-4">
											<input type="text" name="fName" placeholder="First Name"
												class="form-control border-0 shadow form-control-lg">
										</div>

										<div class="form-group mb-4">
											<input type="text" name="sName" placeholder="Second Name"
												class="form-control border-0 shadow form-control-lg">
										</div>

										<div class="form-group mb-4">
											<input type="text" name="address" placeholder="Address"
												class="form-control border-0 shadow form-control-lg">
										</div>

										<div class="form-group mb-4">
											<input type="text" name="phoneNum" placeholder="Phone Number"
												class="form-control border-0 shadow form-control-lg">
										</div>

										<div class="form-group mb-4">
											<input type="text" name="email" placeholder="E-mail"
												class="form-control border-0 shadow form-control-lg">
										</div>


										<button type="submit" class="btn btn-primary shadow px-5">Sign
											In</button>
										<button type="reset" class="btn btn shadow px-5">Reset</button>

									</form>
								</div>
							</div>
						</div>
						<!-- 
					<div class="row align-items-center py-8">
						<!-- 
						<div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
							<div class="pr-lg-5">
								<img src="img/illustration.svg" alt="" class="img-fluid">
							</div>
						</div>
		-- >
						<div class="col-lg-8 px-lg-4">
							<h1 class="text-base text-primary text-uppercase mb-4">I can
								make the Sign in Form!</h1>
							<h2 class="mb-4">Sign in in HERE!</h2>
							<p class="text-muted">LOL! Join our Site and Get Premier
								Service, yall!</p>

							<form action="Signinok.jsp" method="post" name="SigninForm"
								id="SigninForm">

								<div class="form-group mb-4">
									<input type="text" name="userId" placeholder="UserId"
										class="form-control border-0 shadow form-control-lg">
								</div>

								<div class="form-group mb-4">
									<input type="password" name="passowrd" placeholder="Password"
										class="form-control border-0 shadow form-control-lg text-violet">
								</div>

								<div class="form-group mb-4">
									<input type="password" name="passowrdCheck"
										placeholder="Password Check"
										class="form-control border-0 shadow form-control-lg text-violet">
								</div>

								<div class="form-group mb-4">
									<input type="text" name="fName" placeholder="First Name"
										class="form-control border-0 shadow form-control-lg">
								</div>

								<div class="form-group mb-4">
									<input type="text" name="sName" placeholder="Second Name"
										class="form-control border-0 shadow form-control-lg">
								</div>

								<div class="form-group mb-4">
									<input type="text" name="address" placeholder="Address"
										class="form-control border-0 shadow form-control-lg">
								</div>

								<div class="form-group mb-4">
									<input type="text" name="phoneNum" placeholder="Phone Number"
										class="form-control border-0 shadow form-control-lg">
								</div>

								<div class="form-group mb-4">
									<input type="text" name="email" placeholder="E-mail"
										class="form-control border-0 shadow form-control-lg">
								</div>


								<button type="submit" class="btn btn-primary shadow px-5">Sign In</button>
								<button type="reset" class="btn btn shadow px-5">Reset</button>
								
							</form>
 -->
					</div>
				</section>
			
			</div>

			

		</div>
	</div>
		<footer
			class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100">
			<jsp:include page="/common/Bottom.jsp"></jsp:include>
		</footer>
	</div>


	<!-- JavaScript files-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper.js/umd/popper.min.js">
		
	</script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery.cookie/jquery.cookie.js">
		
	</script>
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="js/js.cookie.min.js"></script>
	<script src="js/charts-home.js"></script>
	<script src="js/front.js"></script>
</body>
</html>
