<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>&&&&& TODAY POINT &&&&&</title>

</head>
<body>
벨렐렐레

<!--
Session : 브라우저 (접속한 사용자) 마다 서버에서 부여하는 고유한 객체

Session : 웹 서버가 접속한 클아이언트 (웹 브라우저)에게 부여하는 고유한 ID값 (식별값)

ex)
A 라는 사용자 >> 웹 서버 접속 >> session 객체 생성 >> 고유한 ID 값을 만들고 >> ID 값을 Client에게 response
	(위의 과정은 자동으로 이루어짐)
	
JSESSIONID : F62CD4EEEE3B194280405253379A623D
위의 값은 [동기화 작업] 에 사용함
쿠키 삭제후 다시 접속하면
JSESSIONID : 0E5D05D29BB539A578BD738E79361DD7
	// 서버에서 메모리 할당하고 있는것이기 때문에  default 는 20분 정도 세션 유지 해놓음
	TOMCAT - web.xml 에 629 번째 줄? 30분 설정되어있음
새로운 값을 주네?

이 key 값을 그대로 들고가서 서버에서 이 key 가 있는지 확인하면서

동기화 작업 (로그인, 로그아웃, 정보)
처음 접속한 시간, 마지막 접속한 시간 두개의 차가 30분이 넘으면 자동으로 로그아웃.

-->

<%
	// 자바에서 날짜 format 에 시간 넣기
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>

<h3>세션정보 (세션객체에 부여된 정보들)</h3>
session 정보의 식별값 : <%=session.getId() %>
Id value 로 session 들을 식별 해 냅니다.

<!-- 
그렇다면!
서버쪽은 DB 에 저장되어있고 클라이언트에서는 쿠키를 생성하고 일정시간이 지나면 새로운 걸로 만들어주는데				&&&&&&&&&&&&&&&&&&&&&&&&&&&& 질문
만약에 클라이언트에서 쿠키를 삭제하고 다시 만들경우 서버에는 그데이터가 계속해서 유지되고있는것 아닌가??
그럼 서버에서 자원 낭비가 클텐데??? 어째 처리하는거임 이런거는?
 -->
 
<hr>
<h5>들어있는 정보를 뿌려봅시다</h5>


<%
	time.setTime(session.getCreationTime());
	// 세션이 처음 생성된 시간을 집어넣음. setTime 함수의 기능인듯?
%>

[session 생성된 시간] : <%=formatter.format(time) %>
<hr>

<%
	time.setTime(session.getLastAccessedTime());
	// 마지막 세션이 처리된 시간을 집어넣음.
%>
[session 종료된 시간(client)] : <%=formatter.format(time) %>


</body>
</html>