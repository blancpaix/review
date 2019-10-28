<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*
WAS : 여러개의 웹 어플리케이션을 서비스 할 수 있다
WAS 안에 WebJSP 웹 프로젝트 (어플리케이션)을 가지고 있다

http://192.168.0.27:8090/WebJSP/Ex10_Application.jsp
http://192.168.0.27:8090/WebJSP2/Default.jsp
						WebJSP / WebJSP2 : 웹 어플리케이션 이름, 프로젝트 명 , 가상 Directory	[ 실제  물리적 Dirctory : C:\SmartWeb\WebJSP\JSPLab ]
								
-- C:\SmartWeb\WebJSP\JSPLab 			실경로
-- http://192.168.0.27:8090/WebJSP/		웹경로 (가상 디렉토리)

어플리케이션이 가지는 default 서비스 경로 = 실 서비스 경로 : WebContent (Context root) [context: 문맥? 흐름?)		 프로젝트가 서비스하는 기본 경로 
-- http://192.168.0.3:8090/WebJSP/

** 우리가 만든 소스파일은 (html, jsp, htm, js, css)
WebContent 안에 있어야 합니다.
WebContent 안에 있는 모든 페이지 (JSP) 가 공유할 수 잇는 자원은 없을까??????????????????????????????? &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
	-p.s. Import WAR file... project 에서 우클릭 Import WAR 파일 하면 하나로 압축된 파일 들고와서 알아서 import 함... 이게 배포라는거임?

			
저는 어떤 자원은 a.jsp b.jsp  사용.... 모든 페이지가 공유를 하고싶은데???  static 처럼 사용하고 싶은데????... 페이지가 자기의 scope 아기 때문에 어떻게 하냐면
		
** 웹 어플리케이션은 하나의 설정 파일을 가진다 (웹 전체의 설정 정보를 가질 수 있다)
** web.xml 이라고 합니다 (웹 어플리케이션의 설정 정보 관리)		>>		가장 먼저 실행 
** WebContetn	>	WEB-INF 	>	web.xml


!!접근불가!!
** WEB-INF (보안폴더)  >>  클라이언트가 접속 할 수 없는 경로  >>  주소 접근 시 404 띄움
** http://localhost:8090/WebJSP/WEB-INF/web.xml
** WEB-INF  >>  view 폴더  >>  member 폴더  >>  login.jsp 생성 (나중에 : forward..)

application 객체 처리 ...뭐시기ㅣ빠졋는데 &&&&&&&&&&&&&&&&&&&&&&&

application 객체 처리 (web.xml 자원 ....)
*/

int sum =0;		// 유효범위 : 페이지		[ page 생성되면 같이 생성... page 끝나면 소멸 ]
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String param = application.getInitParameter("email");	// xml 파일로부터 불러옴
		out.print("<h3>" + param + "</h3>");
		
		String param2 = application.getInitParameter("FilePath");
		out.print("<h3>" + param2 + "</h3>");
		
	%>
</body>
</html>