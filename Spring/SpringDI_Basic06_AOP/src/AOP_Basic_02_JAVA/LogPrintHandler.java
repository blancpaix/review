package AOP_Basic_02_JAVA;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Arrays;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.util.StopWatch;

/*
��������(�������) ����
invoke : �ϳ��� �Լ��� �������� �Լ��� �븮 ó��
*/
public class LogPrintHandler implements InvocationHandler{

	private Object target; //�ǰ�ü�� �ּҰ�
	public LogPrintHandler(Object object) {
		System.out.println("LogPrintHandler : �������� ������ ȣ��");
		this.target = object;
	}
	//�־���(�Լ�)
	//ADD , MUL , SUB �븮�ؼ� ó��
	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		System.out.println("Invoke �Լ� ȣ��");
		System.out.println("method : ȣ�� �Լ��� : " + method );
		System.out.println("method parameter : " + Arrays.toString(args));
				
		
		//����(����) ����(advice)
		Log log = LogFactory.getLog(this.getClass());
		StopWatch sw = new StopWatch();
		sw.start();
		log.info("[ Ÿ�̸� ���� ^^]");
		
		//�־��� (�ǰ�ü�� �Լ� ȣ��)
		int result = (int)method.invoke(this.target, args);
		
		//����(����) ����(advice)
		sw.stop();
		log.info("[ Ÿ�̸� ����^^ ]");
		log.info("[ TIME LOG Method ]");
		log.info("[ TIME LOG Method Time : " + sw.getTotalTimeMillis() + " ]");
		
		return result;
	}

}
