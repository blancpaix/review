package com.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// @WebServlet("/FrontBoardController")
// web.xml url-pattern 이 들어가면 위에꺼 @annotation 쓰면 에러날수도 잇어용~ 삭제해도 무방합니다.
public class FrontBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FrontBoardController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    // GET, POST 두가지 요청에 대해서 모두 동작하는 함수
    // 1. servlet 제공하는 함수 : serivce() 함수
    // 2. 별도의 함수를 생성해서 개발자 마음대로, 일반적으로 : doProcess
    																				// post, get 식볗하기 위한 parameter
    private void doProcess(HttpServletRequest request, HttpServletResponse response, String method) throws ServletException, IOException {
		// GET, POST 모든 요청은 내가 처리하겠다
    	System.out.println("클라이언트 요청 : " + method);
    	
    	// 1. 한글처리
    	
    	// 2. 요청 받기 : request
    		
    	// 3. 요청 판단 (판단의 기준 : parameter) : command 방식 - parameter 사용	/	url 방식도 있음
    	// 항상 판단의 근거가 되는 PARAMETER 가 필수적임..ㅜ				&&&&&&&&&&&&&&&&  별로인가??? 판단의 기준이 이럼
    	//  3.1 parameter 기준
    	//  3.2 /board?cmd=login&userid=kglim&pwd=1004
    	//   String str =request.getParameter("cmd"); 	뭐임 이건?
    	//   if (str.equals("login") { 로그인처리 }
    	// -----------------------------------------------------
    	// 	    /board?cmd=boardlist
    	//   String str =request.getParameter("cmd"); 	뭐임 이건?
    	//   if (str.equals("boardlist") { 게시판 조회 처리 }
	
		// TIP : URL 주소 판단
		// 192.168.0.27:8090/WebSite/board/boardlist
    	// 192.168.0.27:8090/WebSite/board/boardwrite?title=aaa&content=hello
    	// 마지막 주소값 추출 : 판단기준 (/boardlist, /boardwrite)
    	// /boardlist - 게시판 조회 처리
    	// /boardwrite - 게시판 글쓰기 처리			 이거 두가지 말고는 다 비동기 처리입니다만??
    	
    	// 4. 처리결과 저장
    	
    	// 5. view 정의
    	//  view page 정의 : jsp
    	//  WebContent(root dir) > board > boardlist.jsp
    	//  WebContent(root dir) > error > error.jsp
    	//  192.168.0.27:8090/WebServlet_1/board/boardlist.jsp 클라이언트가 이런식으로 접근하는데
    	//  문제점 : 클라이언트가 직접 URL 을 입력하고 들어올 수 있음 (따로 막아야 함)
    	//  		결국 view 단 페이지는 데이터를 이전 페이지에서 요청을 받아서 넘어가는데 그냥 접속 할 경우 껍데기만 출력되는거라서... 내가 상관할 바는 아니지않나? 클라이언트가 이상한거 아님?
    	
    	//  실제 프로젝트는 아래 처럼................... 진행될겁니다 ^^ POINT $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
    	//  해결 : WEB-INF 보안폴더 : view 단 페이지 생성					 WAS 내부에서는 접근이 가능하답니다...만???
    	//  5.1 WEB-INF > views > board > boardlist.jsp 	(OK!)
    	//  5.2 WEB_INF > views > board > error.jsp 		(OK!) 클라이언트가 바로 접근하지 못한다! 페이지가 넘어가는 경우는 가능한듯??
    	
    	// 6. view 에게 전달
    	
    	/////////////////////////////////////////////////////////////////////////
    	
    	// 1. 요청받기 (command)
    	// 	요청주소 : 192.168.0.27:8090/WebServlet_1/board?cmd=list
    	String cmd = request.getParameter("cmd");
    	
    	// 2. 요청 판단 (업무에 따라서 정의)
    	String viewpage = null;
    	// cmd == null => error.jsp 뷰 단으로 처리
    	// cmd == boardlist => list.jsp 뷰 단으로 처리
    	// cmd == boardwrite => write.jsp 뷰 단으로 처리
    	 
    	if (cmd == null) {
    		viewpage = "/error/error.jsp";
    	} else if (cmd.equals("boardlist")) {
    		viewpage = "/board/boardlist.jsp";
    		// DB 연결
    		// select...
    		// 실행 결과 (rs)를 객체에 담아서 처리
    		
    		//  사실은.. 별도의 작업을 따로 합니다. DAO class 를 따로 만들어요
    		// baordDao dao = new boardDao();
    		// List<board> boardlist = dao.selectBoardList();
    		// request.setAttribute("list", boardlist);
    		// forward >> view 단 전달 >> boardlist.jsp
    		// <c:set var="list" value="<%=request.getAttribute('list')>" %>
    		// <c:forEach ....
    	} else if (cmd.equals("boardwrite")) {
    		viewpage = "/board/boardwrite.jsp";
    	} else if (cmd.equals("login")) {
    		viewpage = "/WEB-INF/login/login.jsp";
    		// 실 개발시 보안폴더 사용하는 코드.
    		
    	} else {
    		viewpage = "/error/error.jsp";
    	}
    	
    	// 결과
    	// 가정 : List<Emp> list = new ArrayList<> ();
    	// list.add(new Emp(2000, "키뮤신");
    	// request.setAttribute("emplist", list);			// list 넣는거 뭐임..
    	
    	
    	// view 지정 (곧 forward 하겠다는거)
    	RequestDispatcher dis = request.getRequestDispatcher(viewpage);
    	
    	// view forward  [원래 회원가입 페이지는 데이터를 받아올 필요가 없으니까 굳이 forward나 뭐시기 할 필요가 없는 상황임]
    	dis.forward(request, response);
    	
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response, "GET");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response, "POST");
	}

}
