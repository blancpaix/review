package DI_03_Spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class HelloApp {

	public static void main(String[] args) {
		
		// ����
		// MessageBean_en messagebean_en = new MessageBean_en();
		// messagebean_en.sayHello("hong");
		
		//�ѱ�
		// MessageBean_kr messagebean_kr = new MessageBean_kr();	
		// messagebean_kr.sayHello("hong");
		

		// interface �ϳ��� ���� ������ �������� �ּҸ� ���� �� �ִ� (������)
		// MessageBean messagebean = new MessageBean_en();			// new MessageBean_kr(); �ʿ��ϸ� kr, en �ٲٸ� ��
		
		// ApplicationContext context = new ClassPathXmlApplicationContext("DI_03.xml");
		
		ApplicationContext context = new GenericXmlApplicationContext("classpath:DI_03_Spring/DI_03.xml");
		// ���ʸ� ��� �����̳� ������ Ÿ�� ��ȯ�� �ʿ� �����												��Ű���� / xml ����
		// context : container �� �ּ���	getBean �� Ÿ���� 2�� ������ ��
		MessageBean messagebean = context.getBean("message", MessageBean.class);
		
		messagebean.sayHello("gugugu bidulgiya bab muk ja~ gugugugugu");
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