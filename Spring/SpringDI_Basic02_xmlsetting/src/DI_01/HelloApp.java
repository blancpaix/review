package DI_01;

public class HelloApp {

	public static void main(String[] args) {
		MessageBean messagebean = new MessageBean();
		
		messagebean.sayHello("hong");

	}

}


/*
	�䱸����
	�������� (hong) : Hello hong!
	�ѱ۹��� (hong) : �ȳ� hong!
	
	2������ �䱸������ ����
	
	MessageBean_kr > �Լ� > sayHello
	MessageBean_en > �Լ� > sayHello
	
	>> �������̽� : MessageBean �������̽� ���� >> kr, en ����
	
*/