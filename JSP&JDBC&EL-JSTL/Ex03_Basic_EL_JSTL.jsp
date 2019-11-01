<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="kr.or.bit.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
이거는 http://java.sun.com/jsp/jstl/core 이렇게 긴 주소를 c로 대체해서 사용.

<%
	Emp e = new Emp();
	e.setEmpno(1000);
	e.setEname("bituser");
	
	HashMap<String, String> hp = new HashMap<>();
	hp.put("data", "1004");
	
%>    

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
<body>
기존 방식 : <%= e %><br>
기존 방식 : <%= e.getEmpno() %><br>
기존방식 : <%= e.getEname() %><br>

<h3>EL 목적 : 출력 [output]</h3>
자바객체 출력 : ( 객체에 대한 직접접근 불가 ) : ${e }<br>
자바객체 속성 출력 : ${e.getEmpno() }<br>		// error 은 안납니다만..??
	// 출력이 안되서 해결하기 위해서 다른 lib 사용
	
1. JSTL (Core) : 변수생성, 제어문 <br>
	// was 가 해석하는 것들임
<c:set var="m" value="<%=e %>" />
JSTL 을 사용해서 변수 m 을 생성(m 은 e라는 객체의 주소값을 가짐) : ${m }<br>
<!-- EL 이 객체를 바로 찍었으면 좋앗는데 그 기능까지는 불가능해서 JSTL 사용하는듯??? -->
<hr>
EL 출력 : JSTL 사용, 변수값을 출력 : ${m }<br>
EL 출력 : JSTL 변수 ( 가능, 이렇게 잘 안씀 ) : ${m.getEmpno() }<Br>
EL 출력 : JSTL 변수 (!! getter, setter 구현 전제 하) (member file 명 바로 써줌) : ${m.empno }<Br>		=> 자동 getter, setter 함수 호출
				( 자동으로 : getter 함수 호출 )<BR>
EL 출력 : JSTL 변수 (자동으로 getter 함수 호출) (member file 명) : ${m.ename }<br>

<hr>

<h3>EL & JSTL 사용하기</h3>
*** EL & JSTL JAVA 객체에 대한 직접 접근 불가***<br>
*** JSTL set 구문을 사용해서 변수 생성<br>
request, session 객체에 담긴 변수는 접근 가능<br>
requestScope, sessionScope <Br>
JSTL 변수의 value 값으로 (EL 표현식) 사용가능 <br>
<c:set var="username" value="${m.ename }"/>
변수값 출력 : ${username }<br>
				
<hr>
<h3>JSTL 변수 만들고  Scope 정의하기</h3>

<c:set var="job" value="농구선수" scope="request"/>
				scope="request"면 현재 페이지  "include/forward"면 다른 페이지 포함<br>
당신의 직업은 : ${job }<br>
만약에 당신이 [include] [forward] 한 페이지가 있다면 그 페이지에서 job 변수 사용 가능<br>

<c:set var="job2" value="야구선수" scope="request"/>
L.67 값 출력<br>
${job2 }<br>
변수 삭제 기능 <br>
<c:remove var = "job2"/>
job2 변수 삭제 : ${job2 } <br>
아무것도 안나오징?

<c:set var="vhp" value="<%=hp %>" />
hp 객체 : ${vhp } L.75 <br>
hp 객체 : ${vhp.data }<br>

<!-- 
hp.put("color", "red"); 이거를 바꾼거임.
 -->
<c:set target="${vhp }" property="color" value="red" />
hp 객체 : ${vhp }  L.82  || 근데 이건 거의 안쓴대요~ 가능은 하다~<br>

 

</body>
</html>