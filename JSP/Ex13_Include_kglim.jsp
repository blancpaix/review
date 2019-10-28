<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table, tr, td {border : 2px solid black; border-collapse:collapse;}
		
</style>

</head>
<body>
<!-- 이거는 div태그에서 사용하세요 -->
	<table style="width : 700px">
		<tr>
			<td colspan = "2">
				<jsp:include page="/commonModule/top.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
			<td style="width : 200px">
				<jsp:include page="/commonModule/left.jsp"></jsp:include>
			</td>
			<td>
				여기가 PAGE 내용 (게시판)		2번 파일
			</td>
		</tr>
		<tr>
			<td colspan = "2">
				<jsp:include page="/commonModule/bottom.jsp"></jsp:include>
			</td>
		</tr>
	</table>
</body>
</html>