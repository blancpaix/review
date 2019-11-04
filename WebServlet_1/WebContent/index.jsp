<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet TEST here</title>
</head>
<body>

	<h3>Servlet 오청하기</h3>
	<h2>getContextPath() : <%= request.getContextPath() %></h2>
	<!-- getContextPath() : /WebServlet_1 -->
	<a href="<%=request.getContextPath() %>/simple">일반 요청하기</a>
		<!-- 주소가 이쪽으로 설정된다고?? -->
	
	
</body>
</html>