<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("ID");
	if(id.equals("hong")) {
%>
	<%=id %> <img alt ="이미지" src="images/1.png" style="width:100px; height:100px;">
<%
	}
%>

<h3>EL 과 JSTL 사용하기</h3>
${param.ID }
<c:if test="${param.ID == 'hong' }" >
	${param.ID} <img alt ="이미지" src="images/1.png" style="width:100px; height:100px;">
</c:if>


<h3>JSTL IF문</h3>
<c:if test="${param.age > 20 }" var="result">
	param.value = ${param.age }<br>
</c:if>
	if 구문에서 만든 var 변수값은 : && ${result} && 로 출력이 가능합니다.<Br>
	
	여기서 확인하세요 : http://localhost:8090/WebJSP_JDBC_EL_JSTL/Ex04_Basic_EL_JSTL_Quiz.jsp?ID=hong&age=21 <br> 

</body>
</html>