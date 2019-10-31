<%@page import="kr.or.bit.utils.Singleton_Helper"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	/* 
	게시판 비회원 입력시 비밀번호가 key 값임.... 근데 key 가 중복이 가능하잖혀
	뭐임???
	회원전용 게시판은 게시물 비밀번호  필요없고 비회원 전용 게시판은 비밀번호가 필수적으로 입력되어야 함
			
	회원정보 수정하기
	1. DB 쿼리 : 2개 (수정정보 : select, 수정정보반영 : update)
		select + update => 기존 write한 데이터를 불러와서 update 하여 변경함
		1.1 : select * from koreamember where id=?
		1.2 : update 테이블명(koreamember)
				set 컬럼명(name)=?, pwd =?, ...
				where id =? ;
	2. 화면 1개 (show 기존의 입력내용 ) + 처리 1개 (수정 처리)
		2.1 DB select 한 결과를 화면에 출력
			<input type="text" value="rs.getString(id)">
			수정X 전송X 화면출력 : <td>rs.getString("id")</td>		name이 없으면 DB로 못보냅니다~넣어줘야 하나?
			수정X 전송O 화면출력 : <input type="text" value="rs.getString(id)" readonly; name="text1">		// disabled는 전송이 안됨
			수정O 전송O 화면출력 : <input type="text" value="rs.getString(id)" >		
	3. 

	*/
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		conn = 	Singleton_Helper.getConnection("oracle");
		String sql="select id, pwd, age, gender, trim(gender), email from koreamember where id=?";
						// * 쓰면 유지보수가 힘들어요 하지마세요~										파라미터로 받은것
		pstmt = conn.prepareStatement(sql);
						
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery(); 		// 실행을 하고
		
		// while(rs.next());
		rs.next();		// 무조건 한건의 1데이터가 있다는 전제조건			// 이거뭐임??		첫번째 위치로 바로 가겠다는거임.. 
	
%>
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
			<td colspan="2"><jsp:include page="/common/Top.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
			<td style="width: 200px"><jsp:include page="/common/Left.jsp"></jsp:include>
			</td>
			<td style="width: 700px">
				<form action="Ex03_MemberEditok.jsp" method="post">

					<h3 style="text-align: center;">회원가입</h3>
					<div>
						<table
							style="width: 400px; height: 200px; margin-left: auto; margin-right: auto;">
							<tr>
								<td>아이디</td>
								<td>
								  
								 		<!-- select id, pwd, age, gender, trim(gender), email from koreamember where id=?
								 					1번, 2번,  3번, 4번,     5번,         , 6번  -->
									<input type="text" name="id" value="<%=rs.getString(1) %>" readonly>
										<!-- ID 는 가지고 갈건데 수정은 불가능하게 할거라서 readonly 임 -->
								 
								  
								</td>
							</tr>
							<tr>
								<td>비번</td>
								<td><%= rs.getString(2) %></td>
							</tr>
							<tr>
								<td>이름</td>
								<td>
									<input type="text" name="name" value="<%=rs.getString(3) %>" style="background-color:yellow;">
								</td>
							</tr>
							<tr>
								<td>나이</td>
								<td>
									<input type="text" name="age" value="<%=rs.getString(4) %>" style="background-color:yellow;">
									</td>
							</tr>
							<tr>
								<td>성별</td>		<!-- 이게 까다로워요...쪼끔 어렵답니다...?? -->
								<td>
									[<%=rs.getString(5) %>]
									<input type="radio" name="gender" id="gender" value="여" 
										<% if (rs.getString(5).equals("여")){ %>checked<% } %>>여자
									<input type="radio" name="gender" id="gender" value="남"
										<% if (rs.getString(5).equals("남")){ %>checked<% } %>>남
								</td>
							</tr>
							<tr>
								<td>이메일</td>
								<td>
									<input type="text" name="email" value="<%=rs.getString(6) %>" style="background-color:yellow;">
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="submit" value="수정하기">
								<a href='Ex03_Memberlist.jsp'>리스트이동</a></td>
						</table>

					</div>
				</form>
			</td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="/common/Bottom.jsp"></jsp:include>
			</td>
		</tr>
	</table>
</body>
</html>

<%
	}catch(Exception e){
		
	}finally{
		Singleton_Helper.close(rs);
		Singleton_Helper.close(pstmt);
	}

%>