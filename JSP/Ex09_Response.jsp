<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response</title>

</head>
<body>
<!-- 
	Client		=>		Server
		요청(request)
		
	Client 		<= 		Server
		응답(response)			< % =   % > 이것도 response 임
		
	Tomcat (Javax.....)
	
	response
	1. 출력 (표현식)
	2. 페이지 이동처리 (sendRedirect)					&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& 매우 중요해요
	
	: javascript 페이지 이동 : location.href="Ex01_Basic.jsp" (외워야 해요... 모르면 안되용)
	:** 페이지를 서버에게 재 요청, F5	** 	하는것이랑 동일						회원가입 페이지를 다른 페이지로 빨리 넘겨야 합니다만..? 잘못만들경우 매크로 돌리면 서버 터지니까....
	
	: java 				 : response.sendRedirect("Ex01_Basic.jsp")		===			location.href="Ex01_Basic.jsp"
							브라우저에서 해석하지 못하고 WAS가 옆의 코드로 바꿔서 넘어감.					이건 문자열 처리해야 합니다만.. 전자는 필요없어요
	 	
 -->
	RESPONSE 의 목적 
 	1. 일반적인 사용()=출력) : <%= 100 + 200 + 300 %><br>
 	2. sendRedirect		: response 객체의 함수 (클라이언트 서버에게 페이지를 재요청)
 	
 	<%
 		response.sendRedirect("Ex01_Basic.jsp");		// 서버에게 페이지에 대한 재요청			// 페이지 실행하자마자 시작됨...
 	%>
 	 	
 	
</body>

<!-- 
		위의 코드를 javascipt 로 작성							위의 2개는 반드시 이해하고 넘어가야합니다.		36 46Line 체크
 -->
 <script type="text/javascript">
 	location.href="Ex01_Basic.jsp";
 </script>
</html>