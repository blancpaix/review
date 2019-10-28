<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

/*
요청에 대한 흐름제어

include
forward

	// 요청에 대한 응답 방식

공통점 : request 객체를 공유한다

차이점 : 
	include 제어권을 가지고 있다
	==================================================================
	forward 제어권을 넘겨준다	(&&POINT&& : 요청 주소는 동일한데 다른 page의 내용을 서비스)					&&&&&&&&&&&&&&&&
	[다시 되돌아오지 않는다]
	Why? 처음 요청했던 주소의 buffer 그대로 사용
	localhost:8090/WebJSP/login.jsp	.... forward (A.jsp) 로 이루어진다면
		=> 제어권만 넘겨줬을 뿐 담을 수 있는 그릇은 넘겨주지 않음
	담는 그릇는 login.jsp	//	그릇에 담기는 내용은 A.jsp, B.jsp, C.jsp 가 될 수도 있다.
	
	방은 내방인데 방을 채우는 거는 ABC 라서 주객전도된 상황????
			
	
	=============================================
	include
	제어권을 그대로 가지고 있고
	request라는 객체를 공유
	디자인에서 layout 에서 주로 사용
		include는 페이지가 완전히 넘어가서 값을 입력 받거나 하고

	forward
	제어권 넘겨주고 buffered 를 같이 사용한다?
	request라는 객체를 공유
	로직제어 에서 주로 사용
		forward는 페이지가 넘어가긴 하는데... extend 되어서 값을 입력 받거나 해서... 세분화 가능???
				같은 signUp 폼인데 기업 회원/일반회원 /외국인 회원 가입할때 처럼 폼은 동일한데 전달되는 target이 다를경우 사용하는건가?? &&&&&&&&& 질문 				
	===============================================
	
	http://localhost:8090/WebJSP/Ex15_forward_main.jsp?code=A
	이렇게 써야 접속 가능
*/

String code = request.getParameter("code");
String viewURI = null;
	if (code.equals("A")){
		viewURI = "/Forward/A.jsp";
	} else if (code.equals("B")) {
		viewURI = "/Forward/B.jsp";
	} else if (code.equals("C")) {
		viewURI = "/Forward/C.jsp";
	}
%>
<jsp:forward page = "<%= viewURI %>"></jsp:forward>
<!-- 아래 코드의 실행 여부는???? -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
나는 FORWARD PAGE 입니다만?
</body>
</html>