<%@page import="java.util.Calendar"%>
<%@ page import="kr.or.bit.Emp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Emp e = new Emp();
	e.setEmpno(1000);
	e.setEname("홍길동");
	
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);		// 상수값으로 받음
	int month = cal.get(Calendar.MONTH);
	int date = cal.get(Calendar.DATE);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
출력 (표현식)<br> 
	사번:<%= e.getEmpno() %><br>
	이름:<%= e.getEname() %><br>
	전체:<%= e.toString() %><br>
	<hr>
	현재날짜 : <%=year %>년 <%=month %>월 <%=date %>일
</body>
</html>