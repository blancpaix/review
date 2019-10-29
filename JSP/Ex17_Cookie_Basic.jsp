<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie~</title>
</head>
<body>
<!-- 
cookie : 파일 크기 제한적
쿠키 해석하기 쉬움... 쿠키 날리기도 가능해서... 초기 해킹에 주로 사용함
중요한 정보는 절대 담으면 안됨			ex)광고창 오늘 열지않기 누르면 쿠키 데이터를 변경해서 팝업을 띄우고 안띄우고 설정이 가능.

정보 (데이터 : 자료)	>>	어디에 저장하는 것이 (보관) ....		 저장 위치에 따라서 달라집니다만..
고민 : 보안요소 (정보의 중요성), 소멸 (일시적, 영속적)
		중요하면 서버로, 안중요하면 클라이언트로
		

클라이언트 (로컬 PC 웹 브라우저)		:		서버 (웹 tomcat or DB 서버)

Client (local PC : 웹 브라우저)
1. Cookie ( 메모리 쿠키, 파일 쿠키(자동 암호화) ) >> 소멸시기 설정 (언제까지 데이터를 저장할껀지) 브라우저 끄면 날라감 = 메모리, cookie data expire 2090년 = file 로 저장.
2. Local Storage	(저장소) (키 : 값)

Server (WebServer : Tomcat)
1. Server memory : Session 객체	( 접속한 사용자 식별, 개인정보, 접속 시간 )	=> 서버 메모리에서 관리	(서버 꺼지면 날라감) [임시 저장 데이터]
2. Server memory : Application 객체	( 접속한 모든 사용자가 사용가능한 공유 객체 (공유메모리) ) =>	[임시]
3. Server : 파일 (txt)	>>	영속적인 데이터 저장... 인데 관리하기가 굉장히 불편함
4. DB Server : 영속적인 데이터 저장			>> 단점은 객체를 저장 할 수 없습니다.. 그래서 RDBMS >> NoSQL (Json 객체 통으로 저장 가능)
 
 -->
 
<%
	Cookie mycookie = new Cookie("cname", "1004");
	// 만든 쿠키를 클라이언트에게 전송		    쿠키 이름, 	쿠키 값 parameter 로 받음
	response.addCookie(mycookie);

%>

서버 설정한 쿠키 이름 : <%= mycookie.getName() %><Br>
서버 설정한 값 : <%= mycookie.getValue() %><Br>
서버 설정한 쿠키 소멸 설정 : ( -1 : 소멸 시간이 없다 : session 종료시 같이 종료)	:	<%= mycookie.getMaxAge() %>


</body>
</html>