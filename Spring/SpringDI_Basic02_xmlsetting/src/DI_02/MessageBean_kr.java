package DI_02;

public class MessageBean_kr implements MessageBean {
	
	@Override
	public void sayHello(String name) {
		System.out.println("¾È³ç " + name + "!");
	}
}
