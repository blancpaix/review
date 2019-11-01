<%@page import="kr.or.bit.utils.Singleton_Helper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("userid") == null || !session.getAttribute("userid").equals("admin")) {
		//강제로 페이지 이동
		out.print("<script>location.href='index.jsp'</script>");
	}
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
</head>

<style type="text/css">
table {
	border: solid 2px white;
	border-collapse: collapse;
}

tr {
	background-color: white;
	color: black;
}
</style>

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

						<%
						Connection conn = null;
						PreparedStatement pstmt = null;
						ResultSet rs = null;
						try {
							conn = Singleton_Helper.getConnection("oracle");
							String sql = "select id, ip from ExamMember";
							pstmt = conn.prepareStatement(sql);
							rs = pstmt.executeQuery();
						%>

						<table style="width: 400px; height: 100px; margin-left: auto; margin-right: auto">
							<tr>
								<th colspan="4">Member List</th>
							</tr>

						<%
						while (rs.next()) {
						%>
						
						<tr>
							<td width="100px"><a href="Ex03_MemberDetail.jsp?id="<%=rs.getString("id")%>'> <%=rs.getString("id")%> </a> 
							<td width="100px"><%=rs.getString("ip")%></td>
							<td><a href='Ex03_MemberDelete.jsp?id=<%=rs.getString("id")%>'>	[삭제] </a></td>
							<td><a href='memberEdit.jsp?id=<%=rs.getString("id")%>'> [수정] </a></td>
						</tr>

						<%
						}
						%>

						</table>

						<%
						} catch (Exception e) {

						} finally {
							Singleton_Helper.close(rs);
							Singleton_Helper.close(pstmt);
						}
						%>
					
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