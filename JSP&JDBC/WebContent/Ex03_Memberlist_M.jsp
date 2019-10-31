<%@page import="kr.or.bit.utils.Singleton_Helper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border: solid 2px black;
	border-collapse: collapse;
}

tr {
	border: solid 1px blue;
	background-color: white;
	color: black;
}

td {
	border: solid 1px red;
}
</style>
</head>
<body>
	<table
		style="width: 900px; height: 500px; margin-left: auto; margin-right: auto;">
		<tr>
			<td colspan="2">
				<jsp:include page="/common/Top.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
			<td style="width: 200px">
				<jsp:include page="/common/Left.jsp"></jsp:include>
			</td>
			<td style="width: 700px">
				
			<!-- 
				회원 목록(리스트) 출력
				목록 (select id, ip from koreaMember)
			 -->
			 
			 <%	// 똑같이 DB연결을 해야지??
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				//Class.forName("oracle.jdbc.OracleDriver"); tomcat 9.0 생략 가능
				try{
					
					//conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bituser","1004");
					//비기능적 요구사항
					conn = 	Singleton_Helper.getConnection("oracle");
					String sql="select id, pwd from koreamember";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery(); 
			%>
			
				<table style="width:400px; height : 100px; margin-left:auto; margin-right: aujto">
					<tr><th colspan = "4">회원리스트</th></tr>
				<% while (rs.next()) { %>
					<!-- out.print(rs.getString("id") + " / " + rs.getString("ip")); -->
					<tr>
						<td width="100px"> <%=rs.getString("id") %> </td>
						<td width="100px"> <%=rs.getString("ip") %> </td>
						<td>[삭제]</td>
						<td>[수정]</td>
					</tr>
						
				<% } %>
				 
				</table>
			
			<%		
				} catch (Exception e) {
					
				} finally {
					Singleton_Helper.close(rs);
					Singleton_Helper.close(pstmt);
				}
			 %>
				
			
			</td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="/common/Bottom.jsp"></jsp:include></td>
		</tr>
	</table>
</body>
</html>