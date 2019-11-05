package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({ "/LoginServlet", "/Login.do" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    //개발자가 편의해 의해 직접 설계한 함수 .....
    private void doProcess(HttpServletRequest request, HttpServletResponse response , String method) throws ServletException, IOException {
		System.out.println("요청방식 : " + method);
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
			out.print("<head><title>HELLO</title></head>");
			out.print("<body>");
				out.print("Client 요청 방식 : " + method + "<br>");
				
				if(id.equals("hong")) {				// 이런건 편하겟죠??		더이상 이런코드는 유물입니다만?
					out.print("관리자님 방가방가 : " + id + "님");
				}else {
					out.print("<b>넌 누구냐 .....</b>");
				}
			out.print("</body>");
		out.print("</html>");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response, "GET");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response, "POST");
	}

}
