package DI_04_Spring;

public class MessageBeanImpl implements MessageBean{
	private String name;
	private String greeting;
	
	// name ���� �ʱ�ȭ (������)
	public MessageBeanImpl(String name) {
		this.name = name;
	}
	
	// greeting ���� �ʱ�ȭ (setter �Լ�)
	public void setGreeting (String greeting) {
		this.greeting = greeting;
	}
	
	@Override
	public void sayHello () {
		System.out.println(this.name + " , " + this.greeting);
	}

}
