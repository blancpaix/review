<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
/*
	String name = request.getParameter("name");
	if(name.equals("kglim")){
		out.print("<b>" + name + "</b>");
	}else if(name.equals("hong")){
		out.print("<i>" + name + "</i>");
	}else{
		out.print("<h3>" + name + "</h3>");
	}
	out.print("<hr>");
*/
%>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>

<h4>EL & JSTL 사용 (choose 구문 : Java 코드 if(){} else if(){} ,,, 처리)
 Java 코드 :switch~case
 if / Else if / Else if / Else if / else 이런방식으로 처리합니다..
 Else if 를 지원하지 않기때문에  when 구문을 여러개 만들어서 사용함.
 파라미터의 값을 받기 위해서는 param.alpha 로 사용~
</h4>

<c:choose>
	<c:when test="${param.name == 'kglim' }" >
		<b>${param.name }</b>
		잘해찡
	</c:when>
	
	<c:when test="${param.name == 'hong' }" >
		<i>${param.name }</i>
		잘해썽
	</c:when>
	
	<c:otherwise>
		<h3>${param.name }</h3>
		그래썽
	</c:otherwise>
	
</c:choose>
<Hr>


</body>
</html>





