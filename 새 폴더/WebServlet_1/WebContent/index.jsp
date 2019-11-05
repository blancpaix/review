<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet TEST here</title>
</head>
<body>

	<h3>Servlet 오청하기</h3>
	<h2>getContextPath() : <%= request.getContextPath() %></h2>
	<!-- getContextPath() : /WebServlet_1 -->
	<a href="<%=request.getContextPath() %>/simple">일반 요청하기</a>
		<!-- 주소가 이쪽으로 설정된다고?? 사이트 명을 굳이 쓸 필요가 없어서 이거 좋은 방법입니다!-->
	<br>
	<a href="<%=request.getContextPath() %>/simple?type=data">날짜요청하기</a>
	<br>
	<a href="<%=request.getContextPath() %>/simple?type=abcd">비정상요청하기</a>
	<br>
	
	<h3>FontBoardController</h3>
	<a href="<%=request.getContextPath() %>/board?cmd=boardlist">게시판 목록 보기</a>
	<br>
	<a href="<%=request.getContextPath() %>/board?cmd=boardwrite">게시판 글쓰기</a>
	<br>
	<a href="<%=request.getContextPath() %>/board">Error 유도하기</a>
	<br>
	<a href="<%=request.getContextPath()%>/board?cmd=boarddelete">삭제하기(처리 !) </a>
	<br>
	<a href="<%=request.getContextPath()%>/board?cmd=login">페이지 보안(로그인)</a>
	<hr>
	
	<h3>FrontServletController</h3>
	<a href="<%=request.getContextPath()%>/Front.do?cmd=greeting">요청 보내기</a>
	<hr>
	
	
</body>
</html>