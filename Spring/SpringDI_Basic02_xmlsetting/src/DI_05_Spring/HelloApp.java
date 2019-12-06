package DI_05_Spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import DI_04_Spring.MessageBean;

public class HelloApp {

	public static void main(String[] args) {
		/*
		MyBean mybean = new MyBean();
		MyBean mybean2 = new MyBean("hong");	// Constructor Argument �� �����ϴ°���
		
		Singleton single = Singleton.getInstance();
		Singleton single2 = Singleton.getInstance();
		
		// �ּҰ�
		System.out.println("mybean : " + mybean);
		System.out.println("mybean2 : " + mybean);
		System.out.println("singleton : " + single);
		System.out.println("singleton2 : " + single2);
		*/ // ù��° �� �����
		
		
		ApplicationContext context = new GenericXmlApplicationContext("classpath:DI_05_Spring/DI_05.xml");
		/*
			������ �����̳ʰ� �����ǰ� xml ���� read �ؼ� �Ľ�... ��ü ����... ����(injection)
			
			>> �����̳� ��ü ����... �ʿ��� ��ü ���
			
			getBean() return Object Type ��ü >> Down casting
			
			** ���� **
			getBean() �� ȣ��ÿ� ���ο� ��ü�� ������ �ʽ��ϴ�. 		�ȿ��� ��ü ������ ���ϴϱ� �翬����??
														���� ���ο� ��ü�� ������ ������ �մϴٸ�?
			** ������ �����̳ʰ� ������ ��ü�� Ÿ�� : Default Singleton **
			***** ���������� getBean() �Լ��� ��ü�� �����ϰ� �� �� �ִ�	=> ȣ���� �� ���� new �� �߻��ϴ°���...
			
		*/
		MyBean mybean = context.getBean("mybean", MyBean.class);
		MyBean mybean2 = context.getBean("mybean", MyBean.class);
		MyBean mybean3 = context.getBean("mybean", MyBean.class);
		System.out.println("�ּҰ� Ȯ�� : " + mybean + ", " + mybean2 +", " + mybean3);
		
		MyBean mybean4 = context.getBean("mybean2", MyBean.class);
		System.out.println("���ο� ��ü ���� : " + mybean4);
		
		Singleton single = context.getBean("single",Singleton.class);
		Singleton single2 = context.getBean("single",Singleton.class);
		System.out.println("�ּҰ� Ȯ�� : " + single + ", " + single2);
		
		
	}
}
