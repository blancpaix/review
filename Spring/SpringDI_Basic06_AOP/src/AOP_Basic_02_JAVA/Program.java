package AOP_Basic_02_JAVA;

import java.lang.reflect.Proxy;

public class Program {

	public static void main(String[] args) {
		Calc calc = new NewCalc();
		// Calc.ADD(100,200); 		�̷��� �ϸ� ���������� ��Ž
		
		// Proxy ��ü ���ؼ� ó��
		Calc cal = (Calc)Proxy.newProxyInstance
			(	calc.getClass().getClassLoader(),		// �� Ŭ������ Meta ������ ���� 
				calc.getClass().getInterfaces(),	// ���� ���� (�������̽�)
				new LogPrintHandler(calc) 		// ������ü >> Param �ǰ�ü�� �ּ� (8���� ��ü �̸�)
			);
	
		// Proxy �� ���ؼ� ó��������
		// ���� ����ϴ� ����ڴ� Calc ��ü�� ����ϴ� ��ó�� 
		
		int result = cal.ADD(50000, 12345);
		System.out.println("Main result : " + result);
		
		result = cal.MUL(10000, 20000);
		
		
	}
}
