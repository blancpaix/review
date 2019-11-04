<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core Lib ETC</title>
</head>
<body>
	<h3>out 출력 (EL)</h3>
	<c:out value="<p>태그는 문단 태그입니다"/>
	외워야 될 특수문자가 무엇이냐면 html 코드 그대로 출력하는게
	&lt;p&gt;<p>태그는 문단 태그입니다만??&lt;/p&gt;
	<hr>
	
	<!-- JSTL 의 예외처리 -->
	<h3>예외처리</h3>
	<c:catch var="msg">
		name : <%=request.getParameter("name") %>
		<%
			if (request.getParameter("name").equals("hong")) {
				out.print("당신의 이름은 : " + request.getParameter("name"));
			}
		// 일부러 에러를 일으키는 코드임... 비교를 하기위해서는 name parameter을 입력해야 하는데 없으니 오류남
		%>
	</c:catch>
	<c:if test="${msg != null }">	<!-- 예외가 발생 했다면 -->
		<h3> 예외 발생 </h3>
		오류 메세지 : ${msg }
	</c:if>
	<!-- 사실 출력할때 예외가 발생할 일이 별로 없는데 굳이 만들자고 하면~ -->
	
	
</body>
</html>