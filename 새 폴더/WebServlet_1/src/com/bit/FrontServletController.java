package com.bit;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(
		description = "이놈은 컨프롤러요", 
		urlPatterns = { 
				"/FrontServletController", 
				"/Front.do"
				// 이거 2번째 탭에서 Add 해서 추가하는데 앞에 무적권 / 붙혀주고 써야합니다만?
		})

public class FrontServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public FrontServletController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/*
	service 있으면 doGET() 과 doPOST() 는 실행되지 않아요~					&&&&&&&&& 둘중에 하나는 죽여야 함
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	*/
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("요청이 들어왔어요~ ^^ 헤헿");
		// 192.168.0.27:8090/WebServlet_1/Front.do?cmd=greeting

		// 요청받기		
		String cmd = request.getParameter("cmd");

		String msg = "";
		if (cmd.equals("greeting")) {
			// 필요하다면 객체를 생성
			Message m = new Message();
			msg = m.getMessage(cmd);	
		}
		
		request.setAttribute("msg", msg);
		
		// 뷰 지정
		RequestDispatcher dis = request.getRequestDispatcher("/greeting.jsp");			// 결국 jsp 쓰는거는 똑같은데??
		
		dis.forward(request, response);					// 정해진 패턴에서 업무만 바꾸면 됩니다?
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	} 

}
