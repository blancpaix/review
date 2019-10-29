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
새로운 값을 주네?

이 key 값을 그대로 들고가서 서버에서 이 key 가 있는지 확인하면서

동기화 작업 (로그인, 로그아웃, 정보)
처음 접속한 시간, 마지막 접속한 시간 두개의 차가 30분이 넘으면 자동으로 로그아웃.

-->

<%
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");	
%>

<h3>세션정보 (세션객체에 부여된 정보들)</h3>
session 정보의 식별값 : <%=session.getId() %>
<hr>
<h5>들어있는 정보를 뿌려봅시다</h5>

<%
	time.setTime(session.getCreationTime());
%>

[session 생성된 시간] : <%=formatter.format(time) %>
<hr>

<%
	time.setTime(session.getLastAccessedTime());
%>
[session 종료된 시간(client)] : <%=formatter.format(time) %>


</body>
</html>