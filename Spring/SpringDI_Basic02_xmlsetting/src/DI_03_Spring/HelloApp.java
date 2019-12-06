package DI_03_Spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class HelloApp {

	public static void main(String[] args) {
		
		// 영문
		// MessageBean_en messagebean_en = new MessageBean_en();
		// messagebean_en.sayHello("hong");
		
		//한글
		// MessageBean_kr messagebean_kr = new MessageBean_kr();	
		// messagebean_kr.sayHello("hong");
		

		// interface 하나의 참조 변수가 여러개의 주소를 가질 수 있다 (다형성)
		// MessageBean messagebean = new MessageBean_en();			// new MessageBean_kr(); 필요하면 kr, en 바꾸면 됨
		
		// ApplicationContext context = new ClassPathXmlApplicationContext("DI_03.xml");
		
		ApplicationContext context = new GenericXmlApplicationContext("classpath:DI_03_Spring/DI_03.xml");
		// 제너릭 기반 컨테이너 장점은 타입 변환이 필요 없어용												패키지명 / xml 파일
		// context : container 의 주소임	getBean 은 타입을 2개 가지고 옴
		MessageBean messagebean = context.getBean("message", MessageBean.class);
		
		messagebean.sayHello("gugugu bidulgiya bab muk ja~ gugugugugu");
	}
}


/*
	요구사항
	영문버전 (hong) : Hello hong!
	한글버전 (hong) : 안녕 hong!
	
	2가지의 요구사항이 존재
	
	MessageBean_kr > 함수 > sayHello
	MessageBean_en > 함수 > sayHello
	
	>> 인터페이스 : MessageBean 인터페이스 설계 >> kr, en 구현
*/