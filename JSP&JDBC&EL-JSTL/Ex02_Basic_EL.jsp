<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// EL 출력 (서버쪽 자원...) 		<% 대체
	// EL 사용한다고 해서 JAVA의 객체를 지원하는 것은 아님
	
	Date today = new Date();
	request.setAttribute("day", today);
	session.setAttribute("day2", today);
	
	// 서버쪽에는 이렇게 <% 사용을 하는게 맞고 밑에서 출력을 할때 EL 사용

	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>EL 목적 : 출력 [output]</h2>
	<%=request.getAttribute("day") %><Br>
	EL : ${day}<br>
	request EL : ${requestScope.day } 이렇게 쓰세요 <Br>
	session EL : ${sessionScope.day2 }<br>
</body>
</html>