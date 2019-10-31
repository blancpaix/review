<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*  
	1.한글처리
	2.데이터 받기 (ID ,PWD)		req getParam id,pwd
	3.DB연동 (sql문)			try{ conn = ~
	4.로직처리
	
	id ,pwd 를 parameter 받아서 회원인지 아닌지 판단
	
	-판단조건 				처리 어떻게 할지... try{ 안에서 처리
	1.ID 존재 , PWD(0) > 회원 > Main page 이동  > session.setAttribute("userid",kglim);
		1.Ex02_JDBC_Main.jsp 
	2.ID 존재 , PWD(x) > 다시 한번 로그인 처리 (로그인 페이지)
		2.EX02_JDBC_Login.jsp
	3.ID 존재(x) > 다시 한번 로그인 처리 (회원가입 페이지)
		3.Ex02_JDBC_JoinForm.jsp 
		
	
	1.Ex02_JDBC_Main.jsp 
	2.EX02_JDBC_Login.jsp
	3.Ex02_JDBC_JoinForm.jsp 
	
	 사용자가 입력한 ID , PWD 알고있고
	>select id , pwd from kostamember where id=?
			// id 가 맞는거를 찾는거.
			공식같은 로직이 jdbc 에 있었어요...... 1건짜리, 여러건짜리 만족하는 코드 
				if(rs.next()) {		 .... 이런게 있어요 찾아서 보시고
				
	//1. 결과 없는 경우 , 2. single row , 3. multi row 모두 만족하는 코드
	if(rs.next()) {
			 do {
					 System.out.println(rs.getInt(1)+"/"+rs.getString(2)+"/"+rs.getString(3));
					 if ) for문 돌려서 맞는거 잇는지 확인
						if 한단계 더 들어가서 id 값에 해당하는 pwd 확인
						else ) 패스워드가 일치하지 않습ㄴ디ㅏ .html로 출력
					else )~ 
						
			 }while(rs.next());
	 
	}else {
			 //회원이 아닌 경우 (Ex02_JDBC_JoinForm.jsp )
			if (A!=B) { 회원이 아닌경우 페이지다시 띄움. }
			아니다 그냥 화면 새로 띄우면 될듯. alert 해가지고 html text 아이디 혹은 비밀번호가 일치하지않습니다. 출력
		  }		
			
	
	기능적 요구사항
	비기능적 요구사항이 있다면 : singleton 	싱글톤 헬퍼 드렸는데 어떻게 짤지 고민을 해보세요.
*/

%>    
