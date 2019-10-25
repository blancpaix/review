<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.27:1521:XE","bituser","1004");
	
	String sql = "select empno, ename, sal, job,from emp where empno=?";
	pstmt = conn.prepareStatement(sql);
	
	pstmt.setInt(1, Integer.parseInt(request.getParameter("empno")));			// 첫번째로 받은 값은 문자열이고 정수로 변환해줌
	
	rs = pstmt.executeQuery();		// 쿼리를 실행
	
	
	/*
	<table>
		<tr><td></td></tr>....  데이터 베이스 데이터를 가지고 이런식으로 테이블을 만들고싶다?
	<table>
	*/
	out.print("<table border='1'>");				// println 이랑 동일한 기능이고 클라이언트로 값을 뿌리겠다는거임. 스파게티 코드 아님
	while(rs.next()) {
		out.print("<tr><th>empno</th><td>"+rs.getInt("empno") + "</td></tr>");
		out.print("<tr><th>ename</th><td>"+rs.getString("ename") + "</td></tr>");
		out.print("<tr><th>sal</th><td>"+rs.getInt("sal") + "</td></tr>");
		out.print("<tr><th>job</th><td>"+rs.getString("job") + "</td></tr>");
	}
	out.print("</table>");
	
	  out.print("</table>");
	   if(pstmt !=null){try{ pstmt.close();}catch(Exception e){}}
	   if(rs !=null){try{ rs.close();}catch(Exception e){}}
	   if(conn !=null){try{ conn.close();}catch(Exception e){}}
	   %>    
 