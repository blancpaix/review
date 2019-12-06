package kr.or.bit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.DispatcherServlet;		// �̰��� ������ frontcontroller �� �����Դϴٸ�? 	��û�� �����ϰ� �� �ּҸ� ������ handler ������ �մϴ�
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
	
	// org.springframework.web.servlet.view.InternalResourceViewResolver;


public class HelloController implements Controller{

	public HelloController() {
		System.out.println("Hello Controller ��ü ���� ^^");
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("Hello Controller ��û�� ���� : handleRequest �Լ� ����");
		// ���� ���� (�Խ��� ��Ϻ���, �� ����....)
		// ������ ���, View ����
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("name", "hong"); 			// request.setAttribute() �� ����Ѱ���
		mav.setViewName("Hello");				// view ����
		
		return mav;
		
	}	
}
