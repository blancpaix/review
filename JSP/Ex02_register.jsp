<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	// 서버쪽 객체 사용....
	// 아파치 톰캣 : Web 전용 객체를 제공 (request, response) 객체
	// new 없이 바로 사용가능한 객체 : 내장 객체
	
	// 클라이언트 서버에 전달한 데이터 받기
	// Ex02_register.jsp ? userid=hong & pwd=111..... & hobby=baseball & hobby=soccer
	
	String uid = request.getParameter("userid");			// 클라이언트가 던진 값을 받을 수 있다 그것을 변수에 담음
	String pwd=  request.getParameter("pwd");
	// String hobby = request.getParameter("hobby");		불가, 위의 값은 2개가 있는데 여기서 하나로만 받음은 불가
	String[] hobbys = request.getParameterValues("hobby");			// 배열로 받고 주소값을 리턴
	// JDBC 코드 DB 연결....
	
	//************************* 한글처리 *****************************************
	/*
		전송방식 : GET (Tomcat9 한글 문제 없음)
		Tomcat 9버전 이하
			1. 페이지 상단에 request.setCharacterEncoding("UTF-8"); 붙임
			2. server.xml 63 Line
				<Connector connectionTimeout="20000" port="8090" protocol="HTTP/1.1" redirectPort="8443"/> 에서 URIEncoding="UTF-8" 추가
				<Connector URIEncoding="UTF-8" connectionTimeout="20000" port="8090" protocol="HTTP/1.1" redirectPort="8443"/>
				
			전송방식 : POST
			1. 반드시 (데이터 받기 전에) : request.setCharacterEncoding("UTF-8");
			
			무조건 받는 페이지 상단에 : request.setCharacterEncoding("UTF-8");
			
	*/
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
입력값 : <%= uid %><br>
입력값 : <%= pwd %><br>
입력값 : <%= hobbys %><br>
당신의 취미는 : <br>
<%
	for (String str : hobbys) {		
%>
	hobby:<%= str %><br>
<%
	}
%>


</body>
</html>