<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	// 1. request 객체 (클라이언트 입력한 값)
	// input (단일값 항목) > text, password, radio, textarea 는 뭐임???, select
	// input (다중값 항목) > checkbox, select(multiple)				(실제로는 checkbox 한개임. select-multi 는 잘 안씀)
	// 넘어오는 값 : 단일값?, 다중값? 에 따라
	
	// 단일값
	String userid = request.getParameter("userid");
	String userpwd = request.getParameter("pwd");
	
	// 다중값
	// <input checkbox name="hobby" .... 여러개
	// http://~~~/?hobby=A&hobby=B&hobby=C
	String[] hobbys = request.getParameterValues("hobby");
	
	// for (String str : hobbys) {
	// 		출력
	// }
	
	Enumeration<String> e = request.getParameterNames();		// 넘어오는 변수명들을 뽑아냄? 구버전 Enumeration으로 받음... 제너릭으로 받는데
	String name = "";
	while (e.hasMoreElements()) {
		name += "/" + e.nextElement();
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	userid : <%= userid %> <br>
	pwd : <%= userpwd %> <br>
	<%
		for (String str : hobbys) {
	%>
		취미 : <%= str %><br>
	<%
		}
	%>
	<br>
	request.getParameterNames : <%=name%>
</body>
</html>