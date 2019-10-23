<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   //스크립트 릿(java code 작성 영역)
   Date day = new Date();
   /*
      JSP 페이지 : UI >> Html + Css + Javascript 코드 +
				 Server code (JDBC) >> JAVA 코드 : <% 안에서 구현 % >
		>> 디자인 코드 + 서버 로직 코드 	=>	스파게티 코드 (좋은 방식이 아님) 

		>> [결론]
		>> servlet (Java 로  Web 을 구현하는 page)
		>> UI >> JSP
		>> MVC (model(java) - view(jsp) - controller(servlet))
		>> 잘하는 것만 해~ 		model2 기반의 MVC 패턴
			JPS 하나로 다 하면 되지만, 유지보수가 엄청 힘듦
		
		>> JSP와 html의 차이점 
		>> tomcat(WAS) 사용하는 이유 : Web Server -웹 어플리케이션 서버(서비스)
		>> 1.html로만 구성   :  
		>> 2.jsp로 구성   : WAS 를 통해서 컴파일 >> 변환 >> 전달
		>> 192.168.0.3:8090/WebJSP/Ex01_Basic.jsp 요청을 보내면
		>> WAS(jsp) -> compile(class 생성) -> 결과 (정적 + 동적) -> Client 전달
		>> zjavkdlfehls zhem ghkrdlsgkrl
		>> C:\SmartWeb\WebJSP\JSPLab\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\WebJSP\org\apache\jsp
		
		JSP 구성 요소
		1. 선언부 (JSP 페이지에 대한 기본 설정 세팅)
			ex) page 지시자 >> 사용언어, 인코딩, import 자원
		
		2. 스크립트 요소
			2.1 스크립티 릿 : <% .... java code 구현 ...... % >
            2.2 표현식 (출력방법) : (출력대상 : client 웹 브라우저)	 <%= 안에 있는 내용을 클라이언트에 출력하겠습니다! % >
            2.3 선언부 (공통적인 자원(scope page) : 공통 함수)		<%! 근데 잘안써요~  % >
            
            보통은 선언부 밑에다가 씁니다
       jsp 는 사장될꺼고
       html 로 쓸수 있는거는 다 끌어다 넣어서 쓰세요... 굳이 jsp 안써도 서버쪽 데이터 불러서 쓸 수 있음
	*/
%>  
  
<%!
	// java code (공통 함수)
	public int add( int i, int j ) { 
		return i + j;
	};
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String str = "hong";
%>

<%= str %>

<%= day %>

<% 
	int result = add(100,200);
%>
<hr>
당신이 호출한 add 함수 결과는 : <%= result %>			<!-- 클라이언트까지 전달하려면 이렇게 쓰는거고 스파게티(뒤죽박죽) 코드라고 함 -->
</body>
</html>