<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// Client  전송한 데이터 받기
	// Ex09_loing.jsp?txtuserid=hong&txtpwd=1004
	String userid = request.getParameter("txtuserid");
	String pwd = request.getParameter("txtpwd");
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h3>당신이 입력한 데이터는</h3>
		ID:<%= userid %><br>
		PWD:<%= pwd %><br>
</body>
</html>


