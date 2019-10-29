<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. 한글처리
	request.setCharacterEncoding("UTF-8");
	
	// 2. 데이터 받기
	String uid = request.getParameter("uid");
	String pwd = request.getParameter("pwd");
	
	// 3. 확인하기
	out.print(uid + " / " + pwd);		// 확인하고 그다음 작업 처리
	
	// 4. 로직 / 업무 처리
	// DB연결 >> select 로 확인 >> 회원 테이블 >> id (0) >> pwd(0)		원래라면 이렇게 해야하는데 귀찮으니
	// id, pwd 같으면 회원으로 봅시다
	boolean success = false;
	if (uid.equals(pwd)) {
		// 로그인 성공
		// session 변수에 ID 값을 담아둘거임		
		// ******&&&&&&&******* session 변수의 scope : [모든 페이지 접근 가능] ******&&&&&&&*******			페이지에 종속적이지가 않아요~~
		
		session.setAttribute("memberid", uid);
		success = true;
	}
	
	// String str = "A";		 //  scope : page 
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if (success == true) {
			out.print("<b>로그인 성공</b>");
			String user = (String)session.getAttribute("memberid");
			out.print(user + "님 로그인 되었소.");
			
			out.print("<a href='Ex23_Session_Member.jsp'>회원전용</a>");
		} else {
	%>			
	
	<script type="text/javascript">
		alert("마! 다시 로그인해라");
		window.history.go(-1);			// 바로 전 페이지로 이동하겠다!
		// location.href = "" 가능
	</script>
	
	<%
		}
	%>

</body>
</html>