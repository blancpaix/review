<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// login.html -> submit -> Ex01_Basic.jsp (요청을 받는...)
	String id = request.getParameter("userid");
	
	// 모든 페이지에서 사용하고 싶다 => Session
	
	// inclue, forward 에서만 사용 => request
	request.setAttribute("name", "korea");
	session.setAttribute("user", "bit");
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	EL(표현식) : JSP 페이지에서 사용하는 스크립트 언어 (화면 출력)
	이유 : 스파게티 코드 (% 와 html 혼재되는 코드) => 유지보수, 코드의 해석 (가독성)
		
		문제 개선하기 위해 script 기반의 EL & JSTL 생성 (JSP 페이지에서만 사용가능)
	
	EL : JSP 페이지에서 화면 출력이 목적 (% 없이 server 자원출력이 가능)
	
	| EL 이 가지는 기본객체 |
	paramValues 	 : 요청 parameter의 <parameterName, valueArray> 매핑을 저장한 Map 객체
						요청 파라미터의 		<파라미터이름, 값배열>
	param			 : 요청 parameter의 <parameterName, value> 		매핑을 저장한 Map 객체
						요청 파라미터의 		<파라미터이름, 값>
	requestScope 	 : request 기본 객체에 저장된 속성의 <속성, 값> 매핑을 저장한 Map 객체
	sessionScope 	 : session 기본 객체에 저장된 속성의 <속성, 값> 매핑을 저장한 Map 객체
	applicationScope : application 기본 객체에 저장된 속성의 <속성, 값> 매핑을 저장한 Map 객체

 -->
 
 스크립트 릿 : <b><%=id %></b><br>
 스크립트 릿 : <%=request.getAttribute("name") %><br>
 스크립트 릿 : <%=session.getAttribute("user") %><br>
<hr>

EL request value : ${requestScope.name}<Br>
EL request value (requestScope 생략) : ${name}<Br>
<br>
EL session value : ${sessionScope.user}<br>
EL session value (sessionScope 생략) : ${user}<br>
<!-- request 객체가.... 참조한는 것으 name 이고 앞의 scope 가 생략이가능하다! 
 request 로 저장된 값인가 session 으로 저장된 값인가 코드 이해도를 높이기 위해서 request 같은 것들 쓰세요..-->
%가 사라졌어요!
<hr>

기존 : <%=request.getParameter("userid") %><br>
EL request parameter : ${param.userid }<br>
<hr>

<h3>EL 기본 문법</h3>
<b>EL 표현식 (출력)</b>
스크립트 릿 <%=200+400 %><br>
EL : ${200 + 300}<br>
EL : ${"1" + 1 }<br>
<!-- 문자형 숫자 (자동 형변환) 연산 가능 -->
EL : ${1==1}<br>
<!-- 논리연산 제공 true, false -->
EL : ${!true }<br>
EL : ${empty x }<br>
<!-- x 라는 값이 비어있니???  true/false -->
<!-- EL : ${null + 1 }<br>  여기서 에러가 자주 뜬답니다. 짜증나니까 주석처리 -->		
<!-- null 을 0으로 변환후 연산 -->


더이상 서버쪽 코드는 < %따윈 필요없어요

</body>
</html>