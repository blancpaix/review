package DI_05_Spring;

// Singleton factory observer
// Singletone => ���ο� ��ü�� ���� �� ����
// �ϳ��� ��ü�� �����ؼ� ����Ѵ� new �� ���ϴ°���

public class Singleton {
	private Singleton() {}
	private static Singleton intance = new Singleton();
	// Ŭ���� ���ο�����  new �ϴ��� ������µ�.. �� ���������� new �Ⱦ��� ����ؼ� �����ؼ� ���°���
	
	public static Singleton getInstance() {
		return intance;
	}
	

}
