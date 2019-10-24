<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 	// 스파게티 코드 작성
	
	request.setCharacterEncoding("UTF-8");

	// 사용 변수
	String userId = request.getParameter("userId");
	String userName = request.getParameter("userName");
	String userPassCheck = request.getParameter("userPassCheck");
	
	// 라디오 체크는 어째 처리함? 	무조건 선택되어 있으니 처리 필요 x
	String gender = request.getParameter("gender");
	String userEmail = request.getParameter("userEmail");
	String userSsn1 = request.getParameter("userSsn1");
	String userSsn2 = request.getParameter("userSsn2");
	String userZipCode = request.getParameter("userZipCode");
	
	String userAddr1 = request.getParameter("userAddr1");
	String userAddr2 = request.getParameter("userAddr2");
	String userPhone = request.getParameter("userPhone");
	// 복수값을 받아서 배열로 처리
	String[] hobbys = request.getParameterValues("hobby");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	userId : <%= userId %> <br>
	userName : <%= userName %> <br>
	userPassCheck : <%= userPassCheck %> <br>
	gender : <%= gender %> <br>
	userEmail : <%= userEmail %> <br>
	userSsn1 : <%= userSsn1 %>
	userSsn2 : <%= userSsn2 %> <br>
	userZipCode : <%= userZipCode %> <br>
	userPhone : <%= userPhone %> <br>
	<!-- 스파게티 코드로 값 출력 및 for 문 처리 -->
	<%
		for (String str : hobbys) {
	%>
	
		hobby : <%= str %><br>
	
	<%
		}
	%>

</body>
</html>