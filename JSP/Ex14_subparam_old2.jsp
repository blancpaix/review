<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>request 객체 (include 된) 페이지에서 공유</h3>
	<hr>
	<%= request.getParameter("type")%>
	<%= request.getParameter("userid")%>
	<hr>
	<h3>main 페이지에서 param 액션 태그로 전달된 값</h3>
	<%
		String h = request.getParameter("hobby");
		String p = request.getParameter("pwd");
		out.print("비밀번호 : " + p + "<br>");
		if (h.equals("basketball")) {
			out.print("<i>당신의 취미는" + h + "입니다.</i>");	
		} else {
			out.print("<i>당신의 취미는 ??무엇?? 입니다.</i>");
		}
	%>
</body>
</html>