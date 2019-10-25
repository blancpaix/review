<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 자바코드 작성이 가능해요
	Class.forName("oracle.jdbc.OracleDriver");			// new 랑 동일한 기능인테 톰캣 쓰면 자동으로 로딩 되기 때문에 굳이 쓸 필요가 없어요
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	conn = DriverManager.getConnection("jdbc:thin:@192.168.0.27:1521:XE/","bituser","1004");
	// conn.isClosed()		// 닫혔는가 알아보고.. false 여야만 시작을 할 수 잇음. 
	
	
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= conn.isClosed()%>
</body>
</html>