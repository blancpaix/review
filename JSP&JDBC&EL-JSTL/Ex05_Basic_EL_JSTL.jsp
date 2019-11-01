<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
/*

<c:set	 		: 변수 생성, 값 저장, 자바객체 변수 사용 (value="< %= empno % >...)
<c:remove 		: 변수 삭제
<c:if 			: 조건문 (test="조건절")			else if 사용 불가
<c:choose 		: 여러가지 조건에 따라서 처리 가능 (if 보다 활용도가 높음 &&&&&&&&&&&&&& else if 사용가능)
<c:forEach		: 반복문 (for 문)
<c:forTokens>	: 토큰값 (split 과 for 문 결합)
<c:out		 	: JSTL 출력구문 (이것보다 EL ${} 사용빈도가 높다)
<c:catch		: 예외처리
	
*/
%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
<body>

<h3>EL parameter 받기</h3>
${param.id } - ${param.pwd }<br>

<h3>EL parameter 값을 변수에 저장하기</h3>

생략하고 주소의 parameter value 를 param.asdf 로 불러올수가 있네??
<c:set var="userid" value="${param.id }" />
<c:set var="userpwd" value="${param.pwd }" />

<h3>JSTL 변수값 출력하기</H3>
id : ${userid }<Br>
pwd : ${userpwd } <Br>

</body>
</html>