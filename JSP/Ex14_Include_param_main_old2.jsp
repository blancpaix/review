<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String type= request.getParameter("type");
	String userid= request.getParameter("userid");
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
	<jsp:include page="Ex14_subparam_old2.jsp">				<!-- 이 페이지에서는 밑에서 언급된거 처럼 사용할 수 있다??? -->
		<jsp:param value="basketball" name ="hobby"/>			<!-- 갖다 쓸 수 있다? 근데 마지막에 / 붙는거는 뭐임? -->
		<jsp:param value="1004" name ="pwd"/>
	</jsp:include>		
</body>
</html>