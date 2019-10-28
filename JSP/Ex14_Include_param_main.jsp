<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");				// 문자 인코딩 설정
	String type= request.getParameter("type");			// type 값으로 받은것 저장
	String userid= request.getParameter("userid");		// userid 값을 받은 것 저장
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= type%><br>
	<%= userid %><br>
	<!-- Body 영역에서 표시할것 
	그리고 밑에는 표시할것 호출하는데 그 내장 값으로 name, value 을 줌.-->
	<jsp:include page="Ex14_param.jsp">
		<jsp:param name="hobby" value="basketball"/>
		<jsp:param name="pwd" value="1004"/>		
	</jsp:include>

</body>
</html>




