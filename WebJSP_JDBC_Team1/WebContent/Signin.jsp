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


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
   }else if ($('#mname').val() == "") { // 이름 검사
    alert('mname를 입력해 주세요.');
    $('#mname').focus();
    return false;
   }else if ($('#age').val() == "") { // 나이 검사
    alert('age를 입력해 주세요.');
    $('#age').focus();
    return false;
   }else if ($('#email').val() == "") { // 우편번호
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
			<div class="container-fluid px-xl-5">

				<section class="py-5">
					<div class="row"></div>
						
						
						<table
			style="width: 400px; height: 200px; margin-left: auto; margin-right: auto;">
			<tr>
				<th>ID:</th>
				<!-- 습관적으로 name 을 안만들기 때문에.... 값을 불러올 수가 없다. 그러니까 다 만드세요... 같은 이름을 쓰더라도 일단은 &&&&&&&&&&&&&&&& -->
				<td><input type="text" name="id" id="id"></td>
			</tr>
			<tr>
				<th>PWD:</th>
				<td><input type="password" name="pwd" id="pwd"></td>
			</tr>
			<tr>
				<th>Name:</th>
				<td><input type="text" name="mname" id="mname"></td>
			</tr>
			<tr>
				<th>age:</th>
				<td><input type="text" name="age" id="age" maxlength="3"></td>
			</tr>
			<tr>
				<th>Gender:</th>
				<td><input type="radio" name="gender" id="gender" value="여"
					checked>여자 <input type="radio" name="gender" id="gender"
					value="남">남자</td>
			</tr>
			<tr>
				<th>Email:</th>
				<td><input type="text" name="email" id="email"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="회원가입"> <input
					type="reset" value="취소"></td>
			</tr>
		</table>
						
						
						
						
					<footer
						class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100">
						<jsp:include page="/common/Bottom.jsp"></jsp:include>
					</footer>
			</div>
		</div>




		

	</div>
	</form>
	</td>
	</tr>
	<tr>
		<td colspan="2"><jsp:include page="/common/Bottom.jsp"></jsp:include>
		</td>
	</tr>
	</table>



	<!-- JavaScript files-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper.js/umd/popper.min.js">
			
		</script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="js/js.cookie.min.js"></script>
	<script src="js/charts-home.js"></script>
	<script src="js/front.js"></script>
</body>
</html>
