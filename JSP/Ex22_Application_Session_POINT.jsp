<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘 한것 중에서 가장 중요한 코드랍니다!</title>
</head>
<body>

<!-- 

TODAY POINT
서버에 자원(WAS.. memory) 활용


application		:		session
변수 [전역]				변수 [개인에게 부여 : 접속한 브라우저마다 : sessionID] 
							(접속한 사용자마다 고유하게 부여되는 변수)
						
[application]
전역적으로 접근. application.~ 사용
ex)
사이트 접속 : 전체 접속자 수 [10000명]
application.setAttribute("count",0);		count 라는 전역변수 생성
사이트 접속하는 모든 session (사용자) 접근 가능
	// a 가 들어와도 툭 치고 b가 들어와도 툭 치고 뭐 그런 기능		전역적인 녀석이랍니다.
		
[session]		활용도가 제일 많지 않을까 합니다.. 무진장 많이 만들면 웹 서버 메모리를 엄청나게 쓰는거임
세션별 접근. session.~ 사용
ex)
session.setAttribute("userid", "gmKim");
session.setAttribute("userid", "dyLim");
session.setAttribute("userid", "jgKim");
접속한 사용자 마다 고유하게 부여되는 변수
a, b, c 따로따로 사용할 수 있는 userid 부여

A라는 사용자가 웹 서버 접속
서버 Session 객체 생성 >> 식별값 생성	(ex) A001)		>>		클라이언트 브라우저 (response) 		동기화함..

A001 이 가지는 session 을 다룸 => session.setAttribute("userid", "")

B라는 사용자가 웹 서버 접속
서버 Session 객체 생성 >> 식별값 생성	(ex) B001)		>>		클라이언트 브라우저 (response) 		동기화함..
B001 이 가지는 session 을 다룸 => session.setAttribute("userid", "")

그렇다면!
서버에서 클라이언트랑 같이 연동이 되면서 쿠키 값을 만들어내는건가? 동시에 처리되는거아님?						&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
-->


<h3>세션 정보</h3>
웹 서버가 부여한 고유값 : <%= session.getId() %>
<hr>

<%
	String userid = request.getParameter("userid");					// requuest 로 값을 불러오는거 이거 중요한거 같은데 기억이 잘 안남....
	session.setAttribute("id", userid);	// id 라는 세션 변수
%>
<h3>세션 변수값</h3>
<%
	String id = (String)session.getAttribute("id");		// down casting 을 해줘~~~ 그래서 Object 가 좋은데
	out.print("당신의 ID는 <b> " + id + "</b>");
%>

<!-- 
gm Kim C9B73D3CE911ECEABB56D1249DD304F1
dy Lim  2396690138971E1B90474D45F7A8DCB5 
jg Kim 0AF1D2E8748433697F5A5BB0AED796C1 
 -->

</body>
</html>