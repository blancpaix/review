<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 이 jsp 파일 호출 시 보여주는 페이지 설정 -->
	<h3>request 객체 (include 된) 페이지에서 공유</h3>
	<hr>
	<!-- id가 type/userid 인 곳의 값을 가져옴 -->
	<%= request.getParameter("type")%>
	<%= request.getParameter("userid")%>
	<hr>
	<h3>main 페이지에서 param 액션태그로 전달된 값</h3>
	<%	
		// main 에서 설정되어 있는 값을 그대로 불러와서 사용하는데 실제로 사용하려면????
		// input text 인 곳에서 값을 받아서 집어넣어줘야 되는거 아님?
		String h = request.getParameter("hobby");
		String p = request.getParameter("pwd");
		out.print("비번 : " + p + "<br>");
		if(h.equals("basketball")){
			out.print("<i>당신의 취미는 " + h + "</i>");
		}else{
			out.print("<i>당신은 취미가 없네요</i>");
		}
	
	%>
</body>
</html>








