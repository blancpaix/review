package com;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
서블릿 (Servlet)
java 파일로 웹 서비스를 구동 할 목적으로 만든 파일
서블릿 파일 조건 : (웹에서 생성되는 : request, response) 객체 사용 가능

 1. extends HttpServlet 반드시 상속 (웹 환경에서 요청, 응답) 처리 가능
 
 2. SimpleController 서블릿
 
 3. 서블릿은 이벤트 기반 동작 ( 특정 함수들이 상황에 맞추어 자동 호출)
 	ex) 페이지가 로드되고 나면... 함수 호출
 	protected void doGet
 	protected void doPost 2개의 함수가 자동 호출
 	시점 ) 어떤 사건이 발생되면 자동호출이 될까????
 	클라이언트가 SimpleController 요청하면
 	요청방식 (GET) : 자동호출 (doGet) : protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { }
 														인터페이스 타입 request, 만들어진 객체의 주소값만 가짐
 		doGET() -> <a href="board.do?id=kglim>클릭</a>
 		// callback 함수
 		
 	요청방식 (POST): 자동호출 (doPost) : protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { }
 		doPOST() -> <form method="post" action="" ....
 	
 	3.1  클라이언트 정보를 얻는다 : request.getParameter()
 
 4. jsp > localhost:8090/WebSite/index.jsp  (요청)
 
 	더이상 요청 자체를 jsp 가 받지 않을겁니다. servlet (java file) 로 처리
 
 	servlet> localhost:8090/WebSite/SimpleController.java			 무튼 넘어가서
 	
 	// url pattern 에 따라 처리하는데 크게 2가지로 나뉨
 	 * 1. Web.xml 에서 설정		<= 한눈에 알아 볼 수 있음
 	 * 2. java 파일 @Annotation(컴파일러에게 나는 이렇게 할꺼다 알려주는거 ex)@Override) 으로 설정 		<= 90% 선호됨
 	<url-pattern>/simple</url-pattern>	
 	servlet > localhost:8090/WebSite/simple
 	
 	get 방식으로 들어오면 밑의 함수 호출, post도 마찬가지
 	
 	
 	서블릿 (java) -> 컴파일 -> class 파일 생성 -> 실행 -> 결과 리턴
 	기본적으로 서블릿은 멀티 쓰레드 환경을 적용
 	
 	
 	==12시 서버 오픈 [ SimpleController (java 파일) ]==
 	user#1	-> 최초 요청(localhost:8090/WebSite/simple)
 			-> servlet 컴파일 (java -> class 파일 : 실행파일)
 			-> 실행
 			-> 요청 (doGET() or doPOST() 자동호출 -> Client 응답
 			
 	user#2	-> 요청 (localhost:8090/WebSite/simple)
 			-> 실행 (컴파일 생략)
 			-> 요청 (doGET() or doPOST() 자동호출 -> Client 응답
 			
 		?? 다시 컴파일이 된다면 언제인가요 ?? (서버 리부팅, 코드 수정(자동인식)) 컴파일 자원은 메모리에 다 올라감, 메모리 데이터 다 날라감
 		
 5.	Model 1 방식 (Model 2 기반의 MVC 패턴)
  5.1 JSP 만 가지고 개발 : Model 1 방식의 (DAO, DTO) + JSP
  5.2 클라이언트의 모든 요청을 JSP 처리 합니다
  5.3 UI + 업무(Logic) : JSP 가 처리 (단점 : 유지보수 힘듦)
  
  5.4 Model 2 기반의 MVC
  	MVC (Model, View, Controller)
  	-Model (순수한 JAVA 파일) : DTO(Emp.java)-private string job..., 
  							 DAO(EmpDao.java : DB 연결, 실행함수),
  	-View : JSP(서버쪽에서 생성된 코드 : 자바객체/List 화면 출력(EL % JSTL)), HTML
  	-Controller : Servlet (112 상황실이여~~ )
  		1. 클라이언트의 요청(로그인, 글쓰기, 게시판 상세보기 등 업무) 파악
  		2. 요청을 파악 (처리 : 화면만 전달, DB 연결 Insert, 객체 생성) 결정
  
  6. 
  	<form action="loginok.jsp" method = "post">
  		>> 192.168.0.27:8090/WebSite/loginok.jsp
  	</form>
  	
  	<form action ="/simple" method="post">
  		>> 192.168.0.27:8090/WebSite/simple
  	</form>
  	
   	<form action ="/aaaa" method="post">
  		>> 192.168.0.27:8090/WebSite/aaaa
  	</form>
  	
  
  //simple 호출 되면 Controller 사용, 컴파일 되면서 실행됨.
  <servlet>
   <servlet-name>simplecontroller</servlet-name>
   <servlet-class>com.SimpleController</servlet-class>
  </servlet>
  
  <servlet-mapping>
  	<servlet-name>simplecontroller</servlet-name>
  	<url-pattern>/simple</url-pattern>	
  </servlet-mapping>
  
  	
  	
  
 
 		
 	
*/

/**
 * Servlet implementation class SimpleController
 */


// 여기 일단 주석처리 안하면 에러나서 서버 껐다 킬수도
// @WebServlet("/SimpleController")			// => 자동으로 getter setter toString 자동화 되어서... 분석하기 힘들어용 추상화가 심함
public class SimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SimpleController() {
        super();
        System.out.println("생성자 호출");
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("클라이언트 요청");
		
		// 1. 한글처리
		
		// 2. 사용자의 요청 파악 (요청값 받기)
		String type = request.getParameter("type");
		
		// 3. 요청에 따른 업무 수행 (servicce 실행)
			// 업무를 위해서는 조건을 태워야 함.
		Object resultobj = null;
		if (type == null || type.equals("greeting")) {
			resultobj = "Hello World!";
		} else if (type.equals("date")) {
			resultobj = new Date();
		} else {
			resultobj = "invalid String type";
		}
		
		// 4. 요청 완료에 따른 결과를 저장하기
			// 결과를 저장하는 방법 : request, session, application 객체
		request.setAttribute("result", resultobj);
		
		// 5. 저장한 결과를 Client 에게 전달하기
			// 화면을 출력할 페이지 지정 => 출력한 데이터 넘김 => forward / include (제어권)
		
		RequestDispatcher dis = request.getRequestDispatcher("/simpleview.jsp");
		
		// 나는 simple view 라는 페이지를 정의 할거임.
		// 화면단 지정 후
		// 화면에 데이터 전달
		dis.forward(request, response);		// request 객체의 주소값 전달
		// forward 라서 계속해서 request 계속 들고감.
		// 이건 매번 똑같은 방식이라서.... 기억해두면 좋아용~
		
		// simpleview.jsp 에게 request 객체의 주소를 전달
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
