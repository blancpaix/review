package AOP_Basic_01;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.util.StopWatch;

/*
간단한 계산기 프로그램
-주관심 (업무) : 사칙연산 (ADD, MUL) -> 기능 (함수)
-보조관심 (공통사항) : 연산에 걸린 시간
-log 출력 (console 출력 :  시스템이 출력하는것처럼 Red color 출력... 시간을)
*/

// invoke 가 들어가야 proxy 클래스 제작 가능한데..
// Spring 에서는 몰라도 만들 수 있도록 한건데...

public class Calc {
	public int Add(int x, int y) {
		Log log = LogFactory.getLog(this.getClass());
		// System.currentTimeMillis();
		// stopwatch relize 기능?
		StopWatch sw = new StopWatch();			// => 보조관심 배보다 배꼽이 커짐... AOP 프로그래밍은 이러한 뻘짓거리를 다 분리하는거임
		sw.start();
		log.info("[ 타이머 시작 ]");
		
		int result = x+y;		// 주관심
		
		sw.stop();
		log.info("[ 타이머 종료 ]");
		log.info("[ TIME LOG Method : ADD ]");
		log.info("[ TIME LOG Method Time : " + sw.getTotalTimeMillis() +" ]");
		
		return result;
	}
	
	public int Mul(int x, int y) {
		Log log = LogFactory.getLog(this.getClass());
		
		StopWatch sw = new StopWatch();
		sw.start();
		log.info("[ 타이머 시작 ]");
		
		int result = x * y;		// 주관심
		
		sw.stop();
		log.info("[ 타이머 종료 ]");
		log.info("[ TIME LOG Method : ADD ]");
		log.info("[ TIME LOG Method Time : " + sw.getTotalTimeMillis() +" ]");
		
		return result;
	}
}
