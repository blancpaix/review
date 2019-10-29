<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  
넘어오는 값
ID, PWD, CHK 값 받아서

1. id, pwd 같다면 로그인 성공 				if(id.equals(pwd)) {...} 이런식으로 쓸거임
	CHK 값이 체크되어있다면
	>> 쿠키를 생성해서 사용자의 id 값을 쿠키에 담으세요: 유효타임 (24시간)
	>> 쿠키 쓰기 완료
	
2. id, pwd 같으면 로그인 성공
	CHK 값이 체크되어 있지 않으면
	>> 기존 생성했던 쿠키 삭제 : setMaxAge(0);

3. id, pwd 같지 않다면				f5 누른 것이랑 같은 기능을 하는 location.href / response.sendRedirect()
	response.Redirect()	>>	Ex20_LoginOk.jsp
	
 -->

<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("uid");
String pwd = request.getParameter("pwd");
String chk = null;
chk = request.getParameter("chk");			// 찍어보는게 제일 좋은 방법이오
	// chk에서 value 값이 없으면 "on" 이 리턴됨

// out.print(id + " / " + pwd + " / " + chk);

if (id.equals(pwd)) {				// 로그인 성공
	if (chk != null) {
		if (chk.equals("on")) {		// 체크박스가 체크 되어있다면 쿠키 생성
			Cookie co = new Cookie("UID", id);
			co.setMaxAge(24*60*60);
			response.addCookie(co);
		}
	} else {						// 쿠키 삭제 (체크가 안되어 있다면??? 이 여기가 맞나?)
		Cookie delco = new Cookie("UID", "");		// 뒤의 값으로 그냥 덮어버림...
		delco.setMaxAge(0);							// 바로 소멸하라!
		response.addCookie(delco);	
	}
	out.print("<scipt>location.href='Ex19_Login.jsp'</script>");		// 브라우저가 해석 해 버리게 만드는건데... 뭐임 추잡은데
} else {							// 3번 항목. 로그인 실패하면 로그인 화면 재송출
	response.sendRedirect("Ex19_Login.jsp"); // 서버에게 이 페이지를 다시 줏세요
	
	// 51, 53 같은 기능인데 뭘 하든 상관없는데....
	
}



%>
로그인 했음.
</body>
</html>