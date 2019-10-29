<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// 요구사항 : UID 쿠키가 존재하면 input type=text name=uid value 값에 cookie 보여주고 싶어요
String userid = "";
Cookie[] cookies = request.getCookies();
if (cookies == null) {
	response.sendRedirect("Ex19_Login.jsp");
} else {
	for (int i=0; i<cookies.length; i++) {
		if (cookies[i].getName().equals("UID")) {
			userid = cookies[i].getValue();	
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/* 주의 사항 : 문자열 처리하기 */
var userdata = '<%=userid %>';
console.log(userdata);
// document.getElementById("uid");
// data.value = userdata
</script>
</head>
<body>

<form action="Ex20_LoginOk.jsp" method="get">
	<!-- 서버로 보내려면 name 속성이 있어야 합니다. -->
	ID : <input type="text" name="uid" value="<%=userid %>"><br>
		<!-- uid 가 있기때문에 쿠키를 가지고 와서 다뤄야 하는 페이지입니다.  그냥 < % = userid % > 써버 박아버림?? 많이 쓰는 방법이라는데...? DB 없이 ID 저장 -->
	PWD : <input type="text" name="pwd"><br>
	<hr>
	ID 값 유지하기 <input type="checkbox" name = "chk">
	<hr>
	<input type="submit" value="로그인">
	<input type="reset" value="취소">
</form>

</body>
</html>