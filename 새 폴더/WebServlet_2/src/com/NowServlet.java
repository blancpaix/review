package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NowServlet
 */

@WebServlet(
		description = "서블릿은 서버 시간을 처리하는 클래스입니다", 
		urlPatterns = { 
				"/NowServlet", 
				"/Now.do", 
				"/Now.action",
				"/Now.star"
		}, 
		initParams = { 
				@WebInitParam(name = "id", value = "kosta", description = "id 초기값 설정"), 
				@WebInitParam(name = "jdbcDriver", value = "oracle.jdbc.OracleDriver", description = "오라클 드라이버 클래스 제공")
		})
public class NowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public NowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    				// 인터페이스 타입 파라미터 ServletConfig
	public void init(ServletConfig config) throws ServletException {
		//초기화 함수(자동으로 호출되는 함수)
		//호출시점 : NowServlet 클래스 파일에 대한 [최초 요청시 한번 실행 ]
		//        (서버의 재시작 , 개발자가 코드 수정)
		
		//서버 오픈(it.co.kr) -> WAS(서블릿:NowServlet.java)
		//홍길동 첫 접속자 -> it.co.kr/NowServlet 서버요청 
		//NowServlet 컴파일 -> 실행(class) -> init호출 -> doGET() or doPOST()
		//김유신 (접속자) -> it.co.kr/NowServlet 서버요청 
		//메모리 (실행(class)) -> doGET() or doPOST()
		
		//init : 다른 클래스 , 함수의 공통자원 초기화 , load 하는 역활
		//Class.forName() 드라이버 로딩
		//이런 식의 작업 (init) 함수에서 한번만 실행되게 ....
		//@WebInitParam 자원들을 init 함수에서 사용
		
		String drivername = config.getInitParameter("jdbcDriver");
		System.out.println("최초 요청 한번 실행 : 드라이버 로딩" + drivername);
		
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service 함수 호출(doGET, doPOST 운명은 ?? 누구인가????");
		// 실행되지 않습니다 . 서비스가 혼자 다 처먹음		근데 서비스가 뭘 말하는거임?
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGET() Call");
		//Servlet (웹서비스 제공 : 화면구성)  -> 개선 JSP
		//servlet (웹 UI 구성 )
		request.setCharacterEncoding("UTF-8");
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
			out.print("<head><title>HELLO</title></head>");
			out.print("<body>");
				out.print("현재 날짜 : " + new Date() + "<br>");
				out.print("<script>alert('경고')</script>");
			out.print("</body>");
		out.print("</html>");
		// 다 문자열로 처리하는데 서버에서 html 코드를... 이렇게 직접 신중하게 타이핑 해야 함... 별로임
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPOST() Call");
	}

}





