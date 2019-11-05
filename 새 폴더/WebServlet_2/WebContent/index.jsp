<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>INDEX PAGE</h3>
	<!-- http://192.168.0.38:8090/WebServlet_2/NowServlet -->
	<a href="<%= request.getContextPath()%>/NowServlet">요청하기</a>
	<br>
	<a href="<%= request.getContextPath()%>/Now.do">요청하기</a>
	<br>
	<a href="<%= request.getContextPath()%>/Now.action">요청하기</a>
	<br>
</body>
</html>