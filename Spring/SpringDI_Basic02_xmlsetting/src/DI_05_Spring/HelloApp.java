package DI_05_Spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import DI_04_Spring.MessageBean;

public class HelloApp {

	public static void main(String[] args) {
		/*
		MyBean mybean = new MyBean();
		MyBean mybean2 = new MyBean("hong");	// Constructor Argument 를 주입하는거임
		
		Singleton single = Singleton.getInstance();
		Singleton single2 = Singleton.getInstance();
		
		// 주소값
		System.out.println("mybean : " + mybean);
		System.out.println("mybean2 : " + mybean);
		System.out.println("singleton : " + single);
		System.out.println("singleton2 : " + single2);
		*/ // 첫번째 한 방법임
		
		
		ApplicationContext context = new GenericXmlApplicationContext("classpath:DI_05_Spring/DI_05.xml");
		/*
			스프링 컨테이너가 구성되고 xml 파일 read 해서 파싱... 객체 생성... 조립(injection)
			
			>> 컨테이너 객체 생성... 필요한 객체 사용
			
			getBean() return Object Type 객체 >> Down casting
			
			** 주의 **
			getBean() 은 호출시에 새로운 객체를 만들지 않습니다. 		안에서 객체 생성을 안하니까 당연하쥬??
														물론 새로운 객체를 생성이 가능은 합니다만?
			** 스프링 컨테이너가 가지는 객체의 타입 : Default Singleton **
			***** 예외적으로 getBean() 함수가 객체를 생성하게 할 수 있다	=> 호출할 때 마다 new 가 발생하는거임...
			
		*/
		MyBean mybean = context.getBean("mybean", MyBean.class);
		MyBean mybean2 = context.getBean("mybean", MyBean.class);
		MyBean mybean3 = context.getBean("mybean", MyBean.class);
		System.out.println("주소값 확인 : " + mybean + ", " + mybean2 +", " + mybean3);
		
		MyBean mybean4 = context.getBean("mybean2", MyBean.class);
		System.out.println("새로운 객체 생성 : " + mybean4);
		
		Singleton single = context.getBean("single",Singleton.class);
		Singleton single2 = context.getBean("single",Singleton.class);
		System.out.println("주소값 확인 : " + single + ", " + single2);
		
		
	}
}
