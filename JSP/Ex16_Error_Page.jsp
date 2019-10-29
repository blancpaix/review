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
404 : 요청 페이지가 없는 경우
500 : 서버쪽 코드 문제 : 0으로 나누거나, null 처리 강제 등등등...

web.xml 파일에 설정이 들어있음
-->

<!-- 하단 내용은 에러를 발생하는 코드 래요... -->
<%
	//String data =request.getParameter("name").toLowerCase();
	String data =request.getParameter("name").toLowerCase(); 	// null 값을 소문자화 한다고하면 에러 발생함
%>

전달 받은 내용 : <%=data %>
</body>
</html>