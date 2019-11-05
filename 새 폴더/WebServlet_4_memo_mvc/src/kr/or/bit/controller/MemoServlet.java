package kr.or.bit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.dao.memodao;


@WebServlet("/MemoServlet")
public class MemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MemoServlet() {
        super();
      
    }
    private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	  
    	  //요청의 판단 (x) 통으로 >> 이 servlet (insert : /MemoServlet)
    	      	
    	  request.setCharacterEncoding("UTF-8");
   	
    	  String id = request.getParameter("id");
    	  String email = request.getParameter("email");
    	  String memo = request.getParameter("memo");
    	  //out.print(id + "," + email + "," + memo);
    	  
    	  response.setContentType("text/html;charset=UTF-8"); //클라언트에게 전달한 페이지의 정보 구성
    	  PrintWriter out = response.getWriter();
    	  
    	  try{
    		  	memodao dao = new memodao(); //POINT
    		  	int n = dao.insertMemo(id, email, memo);
    	   
    	   if(n>0){
    		    out.print("<script>");
    	     	out.print("alert('등록성공..');");
    	     	out.print("location.href='MemoList';"); 
    	     	//주소창에 입력 enter (F5) 요청
    	     	//localhost:8090/WebServlet_3/MemoList
    	    out.print("</script>");
    	   }else{ //insert 에서 현실적으로 경우 ...
    		    out.print("<script>");
    		    out.print("alert('등록실패..');");
    		    out.print("location.href='memo.html';");
    		    out.print("</script>");
    	   }

    	  }catch(Exception e){
    	   out.print("<b> 오류 :" +  e.getMessage()  + "</b>");
    	  }
    	  
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
