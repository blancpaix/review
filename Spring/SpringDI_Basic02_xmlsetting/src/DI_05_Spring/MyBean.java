package DI_05_Spring;

public class MyBean {
	public MyBean () {
		System.out.println("Default Contructor");
	}
	
	public MyBean (String name) {
		System.out.println("Overloading Constructor : " + name);		
	}
	
	
	
	
}
