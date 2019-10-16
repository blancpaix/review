<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    // JAVA 코드
    // 목적지 주소
    // 회원가입시 입력한 데이터를 받아서 결과 확인
    // <input type="text" name="userid">
    String userid = request.getParameter("userid");
    String username = request.getParameter("username");
    // JDBC
    // DB 연결 >> insert into ... ? ? >> 실행
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>당신이 입력한 데이터</h3>
ID : <%=userid %><br>
PW : <%=username %><br>

</body>
</html>