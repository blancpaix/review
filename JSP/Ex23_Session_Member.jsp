<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String memberid =  (String)session.getAttribute("memberid");
		// 세션에서 로그인ID 를 불러와서 변수에 넣어놓고
	boolean loginstate = (memberid == null) ? false : true;
		// boolean 으로 한번더 필터링 해서 주소로 회원전용 페이지 접근하는 것을 막음. 
		
	//나중에 다시하는걸로... 로그인에 따라서 쿠키값이 바껴야 하는데 로그인 하면 쿠키값이 변하지가 않네 !!!!!!!!!!!!!!!!!!!!!!!&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
	//memberid.equals("admin")
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 전용 페이지</title>
</head>
<body>
<%

	if(loginstate == true){
		out.print(memberid + " 님 로그인 상태입니다<br>");
		out.print("당신은 이 페이지를 볼 수 있습니다<br>");
		out.print("<a href='Ex23_Session_LogOut.jsp'>로그아웃</a>");			// 이거는 태그를 웹 브라우저에서 해석해서 넣어주는데
			// out 이라는것은 target 을 설정 할 수 있나??? 이렇게 계속 써도 되는건지 잘 모르겠다.			&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
	}else{
		out.print("<script>alert('넌 누구냐')</script>");
		out.print("<script>location.href='Ex23_Session_Login.jsp'</script>");
			// 로그인을 하지않고 주소를 통해 회원 페이지로 접속 할 경우 바로 위의 링크를 타고 넘어감.
	}
	
/*
	// 로그아웃 (session 객체 소멸)
	session.invalidate();					// 세션 객체 삭제하는 것
	// 로그인 (A001A)		----- Server (session >> A001A)
	
	out.print("<script>location.href='Ex23_Session_Login.jsp'</script>");
*/
%>
</body>
</html>