package DI_02;

public class HelloApp {

	public static void main(String[] args) {
		
		// ����
		// MessageBean_en messagebean_en = new MessageBean_en();
		// messagebean_en.sayHello("hong");
		
		//�ѱ�
		// MessageBean_kr messagebean_kr = new MessageBean_kr();	
		// messagebean_kr.sayHello("hong");
		

		// interface �ϳ��� ���� ������ �������� �ּҸ� ���� �� �ִ� (������)
		MessageBean messagebean = new MessageBean_en();			// new MessageBean_kr(); �ʿ��ϸ� kr, en �ٲٸ� ��
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