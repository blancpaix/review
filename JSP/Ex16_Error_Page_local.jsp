<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page errorPage = "/Error/commonError.jsp" %>
<!-- 페이지만 설정하는거임.
에러 페이지 따로 설정해서 사용. 404 라던가 비정상적인 접근아리던가... 뭐 그런식으로 분기해서 사용 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 페이지마다 고유한 에러 페이지 설정 
errorPage = "/Error/commonError.jsp"

그래서
web.xml
-->
<%
	String data =request.getParameter("name").toLowerCase();
	// String data =request.getParameter("name").toLowerCase(); null 값을 소문자화 한다고하면 에러 발생함
%>

전달 받은 내용 : <%=data %>
</body>
</html>