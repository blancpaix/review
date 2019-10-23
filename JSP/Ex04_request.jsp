<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 1. 한글처리부터 먼저 하세요!
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	/*
		내장 객체 중 가장 유명한
		[request] 객체
		Tomcat 이 가지고 있는 내장 객체 ()
		[JSP 파일에서는 Default Tomcat 내장 객체를 선언없이 사용가능]
		
		request 객체 (요청객체)
		1. 요청 페이지당 한개의 request 객체 생성
		2. 클라이언트 정보를 서버로 보낼 수 있다. (request)
		3. 클라이언트의 정보 (IP, 브라우저 버전, 종료, 쿠키 데이터)
		
		request 내장 객체는 클라이언트에서 서버로 요청 할 때 생성되는
		HttpServletRequest 타입을 갖는 객체가 자동 생성되고 그 주소를 참조하는 request 처리함	
	*/
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id : <%= id %> <hr>
	접속한 클라이언트의 IP (해킹 방지 (타 국가 접속 방지)): <%= request.getRemoteAddr() %><br>
	서버(요청한 방식 : 인코딩) : <%= request.getCharacterEncoding() %> <br>
	전송방식 : <%= request.getMethod() %><br>
	포트 : <%= request.getServerPort() %><br>
	
	context root (홈 디렉토리, 가상 디렉토리, 웹의 경로) :	<%= request.getContextPath() %>
<!-- 
// 위의 body도 난잡한 스파게티 코드...
request.getContextPath() >>
	가상경로 (웹에서) : /WebJSP
	실경로 : C:\SmartWeb\WebJSP\JSPLab\WebJSP
	
	http://192.168.0.145:8090/WebJSP/Ex04_request.jsp	: 가상경로
	http://192.168.0.145:8090/WebJSP/					: 서비스 경로 (default) (~~/WebClient/WebJSP/)
	http://192.168.0.145:8090/WebJSP/images/1.jpg		: 서비스에서 사용되는 이미지 경로
-->

	<%=request.getRequestURI() %>
<!-- 
	/WebJSP/Ex04_request.jsp		WebClient 위치에서 부터 주소를 뽑아냄
 -->
</body>
</html>