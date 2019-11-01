<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.or.bit.utils.Singleton_Helper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
    request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	
	if(session.getAttribute("userid") == null || !session.getAttribute("userid").equals("admin") ){

		out.print("<script>location.href='index.jsp'</script>");
	}
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		conn = Singleton_Helper.getConnection("oracle");
		String sql="select id, fn, sn, addr, phn, email from ExamMember where id=?";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1,id);
		
		rs = pstmt.executeQuery(); 
		
		//while(rs.next())
		rs.next(); //1건 데이터가 있다면 전제조건
%>	
	
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

				<section class="py-10">
					<div class="row"></div>

					<div class="row align-items-center py-10">
						<!-- 
						<div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
							<div class="pr-lg-5">
								<img src="img/illustration.svg" alt="" class="img-fluid">
							</div>
						</div>
						 -->
						<div class="col-lg-10 px-lg-4">
							<h1 class="text-base text-primary text-uppercase mb-4">I can
								make the MemberEdit in this Form!</h1>
							<h2 class="mb-4">Correct you Info in HERE!</h2>
							<p class="text-muted">LOL! You are STUPID, yall!</p>

							<form action="memberEditok.jsp" method="post" name="memberEditok" id="memberEditok">

								<div class="form-group mb-4">
									<input type="text" name="userId"
										class="form-control border-0 shadow form-control-lg" value="<%=rs.getString(1)%>"  readonly >
								</div>

								<div class="form-group mb-4">
									<input type="password" name="passowrd" placeholder="Password"
										class="form-control border-0 shadow form-control-lg text-violet" >
								</div>

								<div class="form-group mb-4">
									<input type="password" name="passowrdCheck"
										placeholder="Password Check"
										class="form-control border-0 shadow form-control-lg text-violet"  >
								</div>

								<div class="form-group mb-4">
									<input type="text" name="fName" 
										class="form-control border-0 shadow form-control-lg" value="<%=rs.getString(2)%>" >
								</div>

								<div class="form-group mb-4">
									<input type="text" name="sName" 
										class="form-control border-0 shadow form-control-lg" value="<%=rs.getString(3)%>" >
								</div>

								<div class="form-group mb-4">
									<input type="text" name="address" 
										class="form-control border-0 shadow form-control-lg" value="<%=rs.getString(4)%>" >
								</div>

								<div class="form-group mb-4">
									<input type="text" name="phoneNum" 
										class="form-control border-0 shadow form-control-lg" value="<%=rs.getString(5)%>" >
								</div>
		
								<div class="form-group mb-4">
									<input type="text" name="email" 
									class="form-control border-0 shadow form-control-lg"  value="<%=rs.getString(6)%>">
								</div>


								<button type="submit" class="btn btn-primary shadow px-5">Overwrite</button>
								<button type="reset" class="btn btn shadow px-5">Reset</button>
								
							</form>

						</div>
					</div>

				</section>
	
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


<%
	}catch(Exception e){
		
	}finally{
		Singleton_Helper.close(rs);
		Singleton_Helper.close(pstmt);
	}

%>
