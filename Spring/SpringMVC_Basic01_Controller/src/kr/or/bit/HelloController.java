package kr.or.bit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.DispatcherServlet;		// 이것의 역할이 frontcontroller 의 역할입니다만? 	요청을 인지하고 그 주소를 가지고 handler 매핑을 합니다
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
	
	// org.springframework.web.servlet.view.InternalResourceViewResolver;


public class HelloController implements Controller{

	public HelloController() {
		System.out.println("Hello Controller 객체 생성 ^^");
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("Hello Controller 요청이 실행 : handleRequest 함수 실행");
		// 업무 수행 (게시판 목록보기, 글 쓰기....)
		// 데이터 담고, View 지정
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("name", "hong"); 			// request.setAttribute() 랑 비슷한거임
		mav.setViewName("Hello");				// view 지정
		
		return mav;
		
	}	
}
