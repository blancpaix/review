<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="kr.or.bit.utils.Singleton_Helper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	// 권한처리
	
	// 한글처리
	
	// 데이터 받기 (id, name, age, gender, email)
	
	// update koreamember set name=?, age=?, email=?, gender=? where id=?
	
	// 처리 : Ex03_Memberlist.jsp 로 이동 
	
	
	request.setCharacterEncoding("UTF-8");
		
	// 귀찮은 작업 나중에 없어진답니다.. 왱?? Spring 에서 자동화 해줌
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String email = request.getParameter("email");
	String gender = request.getParameter("gender");


	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	// 업데이트 결과는... 그냥 창을 띄워주진 않지?ㅇㅇ SKIP
	
	try{ 
		conn = 	Singleton_Helper.getConnection("oracle");
		String sql = "update koreamember set name=? , age=? , email=? , gender=? where id=?";
		
		pstmt = conn.prepareStatement(sql);
			

		pstmt.setString(1, name);
		pstmt.setInt(2, age);
		pstmt.setString(3, email);
		pstmt.setString(4, gender);
		pstmt.setString(5, id);
		pstmt.executeQuery();
		// int result = pstmt.executeUpdate();

		out.print("<script>");
			out.print("location.href='Ex03_Memberlist.jsp'");
		out.print("<script>");
				
		
	} catch (Exception e) {
		out.print("<script>");
			out.print("alert('"+e.getMessage()+"');");
			out.print("location.href='Ex03_MemberEdit.jsp'");
		out.print("<script>");
	}finally {
		
		Singleton_Helper.close(pstmt);
		Singleton_Helper.close(conn);
		
	}
	
%>
 