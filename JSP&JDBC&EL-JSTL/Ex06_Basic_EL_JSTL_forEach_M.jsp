<%@page import="java.util.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.or.bit.Emp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>JSTL FOR 문</h3>
<!-- 
in JAVA
	for (int i=0; i<10; i++) { sum += i; }
	for (String s, list) { }
-->
<hr>

<c:forEach var="i" begin="1" end="10">
	${i }<br>
</c:forEach>
<hr>

c set 변수는 페이지 내 어디서나 출력이 가능하다!
<c:forEach var="i" begin="1" end="10">
	<c:set var="sum" value="${sum+i }" />
	
</c:forEach>
sum 누적값 : ${sum } <br>
<hr>

<h3>구구단 5단 출력하기</h3>
<ol>
<c:forEach var="i" begin="1" end="9" >
	<li>5*${i } = ${5*i }</li>
</c:forEach>
</ol>

<h3> 1~9 역순으로 하려면  방법이 없습니다.. </h3>
<c:forEach var="i" begin="0" end="${nowNum }"step="1" >
	${nowNum -1 }
</c:forEach>
<hr>

<h3>EL & JSTL 사용해서 9단까지 출력하세요 : forEach 중첩</h3>
<table border = "1">
	<c:forEach var="i" begin="1" end="9">
		<c:forEach var="j" begin="0" end="9">
		
			<c:choose>
				<c:when test="${j==0 }">
					<tr bgcolor="yellow"> <th>${i }단 </th> </tr>
				</c:when>
				<c:otherwise>
					<tr><td>${i }*${j } = ${i*j }</td></tr>
				</c:otherwise>
			</c:choose>
			
			<!-- 조건으로 분기하는듯??? 0 이라면 이러한 양식을 적용하고 그게 아니라면 다른 양식을 적용시키고? -->
		</c:forEach>
	</c:forEach>
</table>
<!-- choose when otherwise 묶어서 사용하는것에 친숙해져야 합니다..?? -->
<hr>

<h3>JSTL forEach 객체 출력하기</h3>
<%
	int[] arr = new int[]{10, 20, 30, 40};
	// int[] arr = {};
	for (int i : arr) {
		out.print("출력값 : " + i + "<br>");
	}
	// EL JSTL 은 출력을 담당함!!
%>
<h3> *** [EL : JAVA 객체에 직접 접근 불가], JSTL 변수에 사용 데이터 담은 후 EL 사용 **** </h3>
arr 배열[객체] 접근이 불가한지 확인 : ${arr }<br>
		비어있기 때문에 아무런 값이 출력되지 않는다?
		
<c:set var="intarr" value="<%= arr %>"/>
여기서 부터 c:set 변수에 접근이 el 이 가능함... 한바퀴 빙 둘러서 우회 접근함..
c:set 변수에 접근 : ${intarr }<br> 
<hr>

<h3>Java 에서 개선된 for문 (items 제공)</H3>
<c:forEach var="i" items="${intarr }">
	배열값 : ${i }<br>
</c:forEach>
<hr>

EL JSTL 목적은 자바가 가지고 있는 자원을 출력하는것이 목적<br>
이전에 스파게티 코드 같은 더러운 코드에서 탈피하기 위함.<br>
객체는 자바에서 생성해놓고 불러와서 씀.<br>
<hr>

<h3> 단순하게 바로 넣어버립시다.... (편하게) </h3>
<c:forEach var="i" items="<%=arr %>">
	배열값 2: ${i }<br>
</c:forEach>
<hr>

<h3> 재미삼아서.... 이렇게도 가능하다! 정도만~ </h3>
<c:forEach var="i" items="<%= new int[]{1,2,3,4,5} %>">
	배열값 3 : ${i }<br>
</c:forEach>
<hr>

<h3> forEach 활용하기 2 여기까지 해서는 어림도 없어~ </h3>
<c:forEach var="i" items="${intarr }" varStatus="status">
	index : ${status.index }&nbsp;&nbsp;&nbsp;&nbsp;	
	count : ${status.count }&nbsp;&nbsp;&nbsp;&nbsp;	
	value : ${i } <br>
</c:forEach>
index : 시작 0 부터 1234 // count : 개수 1개 2개 3개.. 등 몇개인지 반환.	<br>
프로그램적으로 활용하기 좋은 것들
<hr>

<h3>TODAY POINT (JSTL forEach 활용)</h3>
<%
	List<Emp> emplist = new ArrayList<> ();		// 다형성 linked list 도 사용가능하다는거임
	// ArrayList<Emp> 
	emplist.add(new Emp(1000, "A"));
	emplist.add(new Emp(2000, "B"));
	emplist.add(new Emp(3000, "C"));
	// JSON while (rs.next()) 매우 중요한 코드입니다... 계속 보시면 됩니다.
	// EL 과 JSTL 은 출력입니다!
	
	// 아래 코드는 EL & JSTL 에 맡겨라~ 		 MVC 패턴이 추구하는것은 잘하는 것만 하라는거임.
	for (Emp e : emplist) {
		out.print(e.getEmpno() + " / " + e.getEname() + "<br>");
	}
	
%>


<h3>JSTL 출력하세요</h3>

<c:set var="list" value="<%=emplist %>"/>
	<table border="1">
		<tr><td>사번</td><td>이름</td></tr>
		<c:forEach var="emp" items="${list}">
			<tr><td>${emp.empno }</td><td>${emp.ename }</td></tr>
		</c:forEach>
	</table>
	Get 쓸 필요 없대요~ getter 말하는듯?
	이 구문 무조건 많이 쓰니까 찾아 쓰던가 아니면 외우던가 하세요~

 
 <h3>안담고 쓰기</h3>
 <table border="1">
	<tr><td>사번</td><td>이름</td></tr>
	<c:forEach var="emp" items="<%=emplist %>">
		<tr><td>${emp.empno }</td><td>${emp.ename}</td></tr>
	</c:forEach>
</table>
왜 안됨??

<hr>

<%
	Map<String,Object> hm = new HashMap<>();
	hm.put("name", "hong");
	hm.put("pwd", "1004");
	hm.put("data", new Date());
	
%>

<h3>Java Map EL&JSTL 출력하기(key,value)</h3>
<c:set var="hm" value="<%=hm%>" />
<c:forEach var="obj" items="${hm}">
	${obj.key} -> ${obj.value}<br>
</c:forEach>
(key)name : ${hm.name }<br>
<hr>

<h3>JSTL 구분자 처리</h3>
<c:forTokens var="token" items="A.B.C.D" delims=".">
	<!-- forTokens items 로 값을 받아야 하며,,, 배열이 될테니 미리 배열로 선언하고 사용 -->
	${token } <br>
</c:forTokens>
. 을 구분하여 A, B, C, D 로 나눠줌??
<hr>

<h3>JSTL 복합 구분자 처리</h3>
	<c:forTokens  var="token" items="A.B/C-D" delims="./-">
		${token}<br>
	</c:forTokens>
	
	

      
   <c:forEach var="i" begin="0" end="${2016-1900}">
       <c:set var="yearOption" value="${2016-i}" />
       <option value="${yearOption}">${yearOption}</option>
   </c:forEach>
   
   
   <!-- step 마이너스 값을 사용할 수 없습니다.
       step = -1 그래서 편법적으로 사용
       --로 출력하기 
   -->
   <c:set var="nowNum" value="10"/>
   <c:forEach var="i" begin="0" end="${nowNum}" step="1"> <!-- step 1 씩 증가  -->
      ${nowNum - i}
   </c:forEach>
   
	
</body>
</html>