package AOP_Basic_01;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.util.StopWatch;

/*
������ ���� ���α׷�
-�ְ��� (����) : ��Ģ���� (ADD, MUL) -> ��� (�Լ�)
-�������� (�������) : ���꿡 �ɸ� �ð�
-log ��� (console ��� :  �ý����� ����ϴ°�ó�� Red color ���... �ð���)
*/

// invoke �� ���� proxy Ŭ���� ���� �����ѵ�..
// Spring ������ ���� ���� �� �ֵ��� �Ѱǵ�...

public class Calc {
	public int Add(int x, int y) {
		Log log = LogFactory.getLog(this.getClass());
		// System.currentTimeMillis();
		// stopwatch relize ���?
		StopWatch sw = new StopWatch();			// => �������� �躸�� ����� Ŀ��... AOP ���α׷����� �̷��� �����Ÿ��� �� �и��ϴ°���
		sw.start();
		log.info("[ Ÿ�̸� ���� ]");
		
		int result = x+y;		// �ְ���
		
		sw.stop();
		log.info("[ Ÿ�̸� ���� ]");
		log.info("[ TIME LOG Method : ADD ]");
		log.info("[ TIME LOG Method Time : " + sw.getTotalTimeMillis() +" ]");
		
		return result;
	}
	
	public int Mul(int x, int y) {
		Log log = LogFactory.getLog(this.getClass());
		
		StopWatch sw = new StopWatch();
		sw.start();
		log.info("[ Ÿ�̸� ���� ]");
		
		int result = x * y;		// �ְ���
		
		sw.stop();
		log.info("[ Ÿ�̸� ���� ]");
		log.info("[ TIME LOG Method : ADD ]");
		log.info("[ TIME LOG Method Time : " + sw.getTotalTimeMillis() +" ]");
		
		return result;
	}
}
