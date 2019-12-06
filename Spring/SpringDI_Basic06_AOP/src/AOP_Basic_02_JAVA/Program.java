package AOP_Basic_02_JAVA;

import java.lang.reflect.Proxy;

public class Program {

	public static void main(String[] args) {
		Calc calc = new NewCalc();
		// Calc.ADD(100,200); 		이렇게 하면 보조업무를 안탐
		
		// Proxy 객체 통해서 처리
		Calc cal = (Calc)Proxy.newProxyInstance
			(	calc.getClass().getClassLoader(),		// 실 클래스의 Meta 정보를 제공 
				calc.getClass().getInterfaces(),	// 행위 정보 (인터페이스)
				new LogPrintHandler(calc) 		// 보조객체 >> Param 실객체의 주소 (8번줄 객체 이름)
			);
	
		// Proxy 를 통해서 처리하지만
		// 실제 사용하는 사용자는 Calc 객체를 사용하는 것처럼 
		
		int result = cal.ADD(50000, 12345);
		System.out.println("Main result : " + result);
		
		result = cal.MUL(10000, 20000);
		
		
	}
}
