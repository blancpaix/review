<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>FILE COOKIE READ</h3>

<%
// 클라이언트 브라우저가 가지고 있는 (나의 DOMAIN [my IP]) 가지고 오기
	Cookie[] cs = request.getCookies();				// 쿠키 객체들을 배열로 받는데 쿠키라는 type에다가???
	
	if (cs != null || cs.length >0) {
		for (Cookie c : cs) {
			out.print(c.getName() + "<br>");
			out.print(c.getValue() + "<br>");
			out.print(c.getMaxAge() + "<br>");
			out.print(c.getDomain() + "<br>");
		}
	}

%>
</body>
</html>