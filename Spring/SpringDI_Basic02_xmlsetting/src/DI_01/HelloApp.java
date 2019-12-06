package DI_01;

public class HelloApp {

	public static void main(String[] args) {
		MessageBean messagebean = new MessageBean();
		
		messagebean.sayHello("hong");

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