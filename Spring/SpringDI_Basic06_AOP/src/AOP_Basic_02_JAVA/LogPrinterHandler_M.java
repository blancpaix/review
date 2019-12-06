package AOP_Basic_02_JAVA;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Arrays;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.util.StopWatch;

/* 
�������� (�������) ����
invoke : �ϳ��� �Լ��� �������� �Լ��� �븮 ����
*/

public class LogPrinterHandler_M implements InvocationHandler {		//Invocation ������ �븮 �� �� �ִ� ??? �ٵ� �ݵ�� invoke �Լ��� �������� ��
	
	
	private Object target;	// �ǰ�ü�� �ּҰ�
	public LogPrinterHandler_M(Object object ) {
		System.out.println("LogPrintHandler : �������� ������ ȣ��" );
		this.target = object;
	}
	
	// �־��� (�Լ�)
	// ADD, MUL, SUB �븮�ؼ� ó��
	
	@Override
	public Object invoke (Object proxy, Method method, Object[] args )throws Throwable {		// Throwable
		System.out.println("Invoke �Լ� ȣ��");
		System.out.println("method-ȣ��� �Լ� �̸� : " + method );
		//������ ���� �Լ��� �Ķ���Ͱ��� ���� �޴°���
		System.out.println("method parameter : " + Arrays.toString(args));
		
		
		// ���� (����) ���� (advice)
		Log log = LogFactory.getLog(this.getClass());
		StopWatch sw = new StopWatch();			// => �������� �躸�� ����� Ŀ��... AOP ���α׷����� �̷��� �����Ÿ��� �� �и��ϴ°���
		sw.start();
		log.info("[ Ÿ�̸� ���� ]");
		
		// �־��� (�ǰ�ü�� �Լ� ȣ��)
		int result = (int)method.invoke(this.target, args);		// Object �� �Ѿ���� ������ �ٿ�ĳ����
		
		// ���� (����) ���� (advice)
		sw.stop();
		log.info("[ Ÿ�̸� ���� ]");
		log.info("[ TIME LOG Method : ADD ]");
		log.info("[ TIME LOG Method Time : " + sw.getTotalTimeMillis() +" ]");
		
		return null;
	}
}
