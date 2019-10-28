<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 (WAS 가 가지고 있는..)</title>
</head>
<body>

<!-- 내장 객체(TOMCAT 이라는 was 가 갖는것을 말함) -->

<%
	boolean b= true;
	if (10>5) {
		// 밑에는 왜이렇게 분기하는거임?이미 위에서 true 인데 밑에서 굳이 true 를 쓸 필요가 있는가?? &&&&&&&&&&&&&&&&
%>
		IF(true):<font color="red"><%=b%></font>
<%
	} else {
		b= false;
		// 밑에도 마찬가지		&&&&&&&&&&&&&&&&&&&&&
%>
		IF(false):<font color="blue"><%=b%></font>
<%
	}
%>

<!-- 아에 이게 싫으면 out 을 쓰면 되는데... -->
<h3> out 객체 (서버코드 작업이 편해요 : UI 작업)</h3>
<!-- 위랑 밑이랑 동일한 결과를 내는데 오류는 왜뜨는거임???... -->

<%
	boolean b2 = true;
	if (10 > 5) {
		out.print("IF(true) : <font color = 'red'>" + b2 + "</font>");			// out 을 쓰면 모두 문자열로 만들어 줘야해~ 생 코드 쓴느거임.. 오타 나면 100% 에러나기때문에 힘듦어요
	} else {
		out.print("IF(false) : <font color = 'blue'>" + b2 + "</font>");	
	}
%>
</body>
</html>