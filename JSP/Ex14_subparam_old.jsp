<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3>Ex14_Include_param_Main.jsp : request 객체 공유  &&&&&&&&&&&&&&&&&&&&& 가장 중요한 개념이래요..</h3>
<fieldset>
	<legend>
		INCLUDE
	</legend>
	request : <%= request.getParameter("type") %><br>
	request : <%= request.getParameter("userid") %><br>
</fieldset>
	