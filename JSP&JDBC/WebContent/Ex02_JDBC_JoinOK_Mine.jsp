<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
	회원가입 처리 페이지 (디자인이 필요 없어요)
	
	1. 한글처리
	2. 데이터 받기 (request)
	3. 데이터 확인
	4. 로직 처리 (비즈니스 로직)			 -요구사항에서 만든것들		(Flow 가 있어야 한답니다)
		회원가입 >> 데이터  메모리 / File 저장 >> DB 연결 >> INSERT >> INSERT 결과 >> Client's Data 전달
		
		INSERT 성공 >> 회원가입 완료 >> 페이지 이동 >> 로그인 화면 (로그인 요구)
		이동 :	javaScript : location.href=""
				java	   : response.sendRedirect("")
				>> 클라이언트가 서버에게 페이지를 재요청				https://cafe.naver.com/bitsmartweb/697 복습하시면 좋아용
		
		Insert 실패 >> 경고창 >> 회원가입 페이지 이동
		>> <script> alert() </script> 이런식으로 경고창 띄움...
		
		DB
		id, pwd, name, age, gender, email, ip
		
		ip가 없네??? .... 굳이 클라이언트가 입력하지 않은 데이터도 클라이언트 정보를 얻을 수 잇음
		request 객체를 통해	request.getRemoteAddr()
	
	*/
	
	request.setCharacterEncoding("UTF-8");
		
	// 귀찮은 작업 나중에 없어진답니다.. 왱?? Spring 에서 자동화 해줌
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("mname");
	int age = Integer.parseInt(request.getParameter("age"));
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String ip = request.getRemoteAddr();
	
	// out.print(id + " / " + pwd + " / " + name + " / " + age + " / " + gender + " / " + email + " / " + ip + "<BR>");
	// out.print(request.getRemoteAddr());
	// 항상 이거 먼저 확인하고 시작하세요									&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
	// 여러분이 에러나는 거는 이거 확인 안하고 그대로 바로 진행해서 그래요.. 차근차근 하세요
	
	
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{ 

		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bituser","1004");
		
		String sql = "insert into koreamember(id, pwd, name, age, gender, email, ip) values(?,?,?,?,?,?,?)";		
			// 실수가 많은 분들은 sql tools 에서 작업해서 들고오세요. 그리고 세미콜론 주의하세요.	 세미콜론 붙이면 절대 안됩니다 ㅎㅎㅎㅎ

		pstmt = conn.prepareStatement(sql);
		
		// 번호에 맞춰서 값을 집어넣는건가??? 1번은 id를 말하고 key value 구조?
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		pstmt.setInt(4, age);
		pstmt.setString(5, gender);
		pstmt.setString(6, email);
		pstmt.setString(7, request.getRemoteAddr());
		
		int result = pstmt.executeUpdate();
			// JDBC 는 AUTO COMMIT 입니다만?
		if (result != 0) {
			out.print("<script>");
				out.print("location.href='Ex02_JDBC_Login.jsp'");
			out.print("<script>");
		} else {						// JDBC else 를 타는 일이 있을까? else 를 타는거면 그냥 예외로 빠지는거라고 생각하면 편할듯.
			// 실행 될 확률은 거의 없는데 그래도 굳이 쓰자면???		else 를 탈일이 없어요 그냥....
			out.print("<script>");
				out.print("alert('가입실패');");
			out.print("<script>");
		}
		
			
	} catch (Exception e) {
		// pstmt.excuteUpdate(); 실행 시 PK 위반 예외 발생 		:	 if 타지 않고 발생...
		out.print("<script>");
			out.print("alert('"+e.getMessage()+"');");
			out.print("location.href='Ex02_JDBC_Login.jsp'");
		out.print("<script>");
	}finally {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				
			}
		}
		
		if(conn != null) {
			try{conn.close(); } catch (Exception e) { }
		}
	}
	
	
%>
