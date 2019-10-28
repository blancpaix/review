<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
URI (Universal Resource Identifier)
- 인터넷상의 자원을 식별하기 위한 표기법 및 규약
- URL + URN = URI
- 인터넷 환경에서 URI는 대부분 URL을 의미, URN은 사용이 제한적

URL (Uniform Resource Locator)
- 물리적인 경로, 즉 자원의 위치 정보를 포함
- 프로토콜, 도메인, 아이피, 포트 등
- 컴퓨터로부터 접근 가능한 형태의 자원만 검색될 수 있어 제한적
- 우리가 흔히 보는 'http://test.com/test.jpg' 형태

URN (Uniform Resource Name)
- 독립적인 이름을 제공하기 위해 존재
- 자원에 대해 영속적이고 유일
- 자원의 위치와는 무관
- 예를들어 우리나라에서는 주민등록번호가 대표적


StringBuffer url = request.getRequestURL();    // URL : 전체주소 (프로토콜 + IP + 포트 + 상세경로)
 String uri = request.getRequestURI();            // URI : 프로젝트 이하 경로 (CP + SP)
 String cp = request.getContextPath();           // CP : 프로젝트 명
 String sp = request.getServletPath();            // SP : 패키지 + 파일명
 
 System.out.println("URL : " + url);
 System.out.println("URI  : " + uri);
 System.out.println("CP   : " + cp);
 System.out.println("SP   : " + sp);

-----------------------------------------------------------------

 URL  : getRequestURL() 	http://localhost:8090/WebJSP/Ex10_WebAPP_realPath.jsp
 URI  : getRequestURI()		/WebJSP/Ex10_WebAPP_realPath.jsp
 CP   : getContextPath()	/WebJSP
 SP   : getServletPath() 	/Ex10_WebAPP_realPath.jsp

-----------------------------------------------------------------

 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String resourcePath = "/Download/note.txt";			// / : root 폴더를 위미함
	out.print(resourcePath + "<br>");

	// CP : /WebJSP		>>		웹 에서 바라보는 경로 (가상경로)
	String realContextPath = application.getRealPath(request.getContextPath());
	out.print("ContextPath real path : " + realContextPath + "<BR>");
	// 예상 경로 : C:\SmartWeb\WebJSP\JSPLab
	// 실 경로 : C:\SmartWeb\WebJSP\JSPLab\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\WebJSP\WebJSP
	
	String realFilePath = application.getRealPath(resourcePath);
	out.print("FilePath real path : " + realFilePath + "<BR>");
	// 예상 경로 : C:\SmartWeb\WebJSP\JSPLab
	// 실 경로 : C:\SmartWeb\WebJSP\JSPLab\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\WebJSP\Download\note.txt

	// WHY : 예상 과 다를까....
	// Tomcat 을 eclipse 에 내장하고 배포했을 때 그 경로가 위의 실경로 입니다만??
	// getRealPath : 실제로 배포된 경로  <=  파일 업로드 시 사용
		// -폴더가 동일한 것이 두개 있는데 클라이언트에서 서버 데이터 저장시 실 경로에다가 저장됨. 로컬 디렉터리에서는 파일 생성 아마 안될꺼야??
		
				
	// 게시판 만들기 (파일 업로드 시... 아래 코드 활용할 거여)

	
	out.print("getRequestURL()" + request.getRequestURL() + "<BR>");
	out.print("getRequestURI()" + request.getRequestURI() + "<BR>"); 
	out.print("getContextPath()" + request.getContextPath() + "<BR>");
	out.print("getServletPath()" + request.getServletPath() + "<BR>");
	
	
%>
</body>
</html>