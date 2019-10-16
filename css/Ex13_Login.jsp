<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// JAVA 코드 들어가는 부분
	// 목적지 주소
	// 회원가입시 입력한 데이터를 받아서 결과 확인
	//<input type = "text" name = "userid">
	//<input type = "text" name = "username">
	String userid = request.getParameter("userid");
	String username = request.getParameter("username");

	// JDBC
	// DB 연결 >> insert into ...?? >> 실행
	
%>	


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<H3>당신이 입력한 데이터는 쓸모없습니다.</H3>
	<br>
	ID : <%= userid %> 	<br>		<!-- 이건 클라이언트 브라우저에 전달할거야! -->
	NAME : <%= username %> <br>
</body>
</html>