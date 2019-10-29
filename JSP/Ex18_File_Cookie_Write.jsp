<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
1. 메모리 쿠키 (브라우저 쿠키) : Client 강제적으로 지우지 않는 한, 브라우저를 닫기 전까지, 강제로 소멸타임(-1) 부여
2. 파일 쿠키 (소멸 시간을 가짐) : Client 가 강제로 지우지 않는 한, 정해진 시간을 넘기지 않는 한 지워지지 않음
	60sec 유효 : setMaxAge(60)
	30day 유효 : setMaxAge(30*24*60*60) 일 * 시 * 분 * 초

 -->
 
 <%
 	Cookie co = new Cookie("bit", "hong");
 
 	co.setMaxAge(10);
 	// 60초간 유효
 	response.addCookie(co);
	// 페이지 들어갈때 마다 쿠키를 쓰는거고... 리드하는 페이지만 따로 만들어볼게요.
 	
 %>
</body>
</html>