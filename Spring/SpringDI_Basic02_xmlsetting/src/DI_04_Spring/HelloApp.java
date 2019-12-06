package DI_04_Spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import DI_04_Spring.MessageBean;

public class HelloApp {

	public static void main(String[] args) {
		
		// MessageBeanImpl messagebean = new MessageBeanImpl("hong");
		// messagebean.setGreeting("hello");
		
		// messagebean.sayHello();
		
		ApplicationContext context = new GenericXmlApplicationContext("classpath:DI_04_Spring/DI_04.xml");
		MessageBean messagebean = context.getBean("messagebean", MessageBean.class);
												// messagebean, m1, m2, m3, m4 ´Ù °¡´É
		messagebean.sayHello();
		
	}
}
