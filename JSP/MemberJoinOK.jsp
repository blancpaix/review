<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");

	// 유효성 검증
		// 이메일
	// var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
	
	// 사용 변수
	String userId = request.getParameter("userId");
	String userName = request.getParameter("userName");
	String userPassCheck = request.getParameter("userPassCheck");
	
	// 라디오 체크는 어째 처리함? 	무조건 선택되어 있으니 처리 필요 x
	String gender = request.getParameter("gender");
	String userEmail = request.getParameter("userEmail");
	String userSsn1 = request.getParameter("userSsn1");
	String userSsn2 = request.getParameter("userSsn2");
	String userZipCode = request.getParameter("userZipCode");
	
	String userAddr1 = request.getParameter("userAddr1");
	String userAddr2 = request.getParameter("userAddr2");
	String userPhone = request.getParameter("userPhone");
	String[] hobbys = request.getParameterValues("hobby");
	
%>

 <!--  
  	조별과제 : 
    jquery 를 사용하여 유효성 검증 코드를 만드시고
    MemberJoinOK.jsp 를 통해서 데이터 받아서 결과 출력하세요
     
    userId : keyup 이벤트  정해진 표현에 맞지 않으면 ID 추가 입력		
    ex) let id ="정규표현식" 			정규표현식을 만든다고 가정. 예전에 만들어놓은걸로 만들고 맞지않으면 재입력을 요구 맞으면 넘어가고
    ex) if(id.test($(this).val()) != true) { 확인요청 } else {}		id 가 정규표현식이고... test 함수가 유효성 검증하는 함수임
    
    userPass : keyup 이벤트에서 정해진 표현과 일치 하지 않으면 (정규표현 가능)
    
    userPassCheck : keyup  >> userPass 같은 값인지 확인 일치여부 확인
    
    userEmail : keyup 이벤트에서 email 형식과 일치여부 확인
    
    userPhone : keyup 이벤트에서 phone 형식과 일치여부 확인
    
    
    submit 전송시 
    userId , userPass , userPassCheck , userEmail , userPhone,
    userSsn1 , userSsn2 , userZipCode , userPhone
   	값이 입력되지 않으면 다시 입력을 요청
  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	userId : <%= userId %> <br>
	userName : <%= userName %> <br>
	userPassCheck : <%= userPassCheck %> <br>
	gender : <%= gender %> <br>
	userEmail : <%= userEmail %> <br>
	userSsn1 : <%= userSsn1 %>
	userSsn2 : <%= userSsn2 %> <br>
	userZipCode : <%= userZipCode %> <br>
	userPhone : <%= userPhone %> <br>

	<%
		for (String str : hobbys) {
	%>
		hobby : <%= str %><br>
	<%
		}
	%>

</body>
</html>