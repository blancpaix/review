<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Ex23_Session_Ok.jsp">
		<input type="text"  name="uid"><br>
		<input type="password" name="pwd"><br>
		<input type="submit" value="로그인">				<!--  submit 하면 Ex23_Session_Ok.jsp 로 넘어감 -->
		<input type="reset" value="취소">					<!--  reset 은 말 그대로 위에 있는 input 태그 value 들을 초기화함 -->
	</form>
	
	<hr>
	<h3>회원 전용 페이지</h3>
	<a href="Ex23_Session_Member.jsp">회원 접속</a>
	
</body>
</html>