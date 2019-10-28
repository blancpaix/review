<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="8kb" autoFlush= "true" %>

<!-- 
페이지에 어떠한 설정도 하지 않으면
buffer = "8kb" autoFlush="true"

Page 에 더이상 실행할 자원이 없으면 자동 : flush
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%					// out 사용시 <br> 같은 태그들을 모두 문자화 시켜줘야 합니다
	for (int i=0; i<10; i++) {
		out.print("<b>"+i+"<b><br>");							// JAVA 에서 printout 이랑 비슷한 기능임 (.out)
	}
%>
<!--  < % = i % ><br> 	// 이거는 그대로 나오는 사용하기 편한 스파게티 코드?? 라고 하나??	-->

</body>
</html>