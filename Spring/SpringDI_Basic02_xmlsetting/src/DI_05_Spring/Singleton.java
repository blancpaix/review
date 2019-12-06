package DI_05_Spring;

// Singleton factory observer
// Singletone => 새로운 객체를 만들 수 없다
// 하나의 객체를 공유해서 사용한다 new 를 못하는거임

public class Singleton {
	private Singleton() {}
	private static Singleton intance = new Singleton();
	// 클래스 내부에서는  new 하던가 상관없는데.. 그 나머지에서 new 안쓰고 계속해서 리턴해서 쓰는거임
	
	public static Singleton getInstance() {
		return intance;
	}
	

}
