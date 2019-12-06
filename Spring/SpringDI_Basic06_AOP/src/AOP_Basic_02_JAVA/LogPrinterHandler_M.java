package AOP_Basic_02_JAVA;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Arrays;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.util.StopWatch;

/* 
보조관심 (공통관심) 구현
invoke : 하나의 함수가 여러개의 함수를 대리 ㅊ리
*/

public class LogPrinterHandler_M implements InvocationHandler {		//Invocation 뭔가를 대리 할 수 있는 ??? 근데 반드시 invoke 함수를 만들어줘얗 마
	
	
	private Object target;	// 실객체의 주소값
	public LogPrinterHandler_M(Object object ) {
		System.out.println("LogPrintHandler : 보조관심 생성자 호출" );
		this.target = object;
	}
	
	// 주업무 (함수)
	// ADD, MUL, SUB 대리해서 처리
	
	@Override
	public Object invoke (Object proxy, Method method, Object[] args )throws Throwable {		// Throwable
		System.out.println("Invoke 함수 호출");
		System.out.println("method-호출된 함수 이름 : " + method );
		//마지막 값은 함수의 파라미터값을 따로 받는거임
		System.out.println("method parameter : " + Arrays.toString(args));
		
		
		// 보조 (공통) 업무 (advice)
		Log log = LogFactory.getLog(this.getClass());
		StopWatch sw = new StopWatch();			// => 보조관심 배보다 배꼽이 커짐... AOP 프로그래밍은 이러한 뻘짓거리를 다 분리하는거임
		sw.start();
		log.info("[ 타이머 시작 ]");
		
		// 주업무 (실객체의 함수 호출)
		int result = (int)method.invoke(this.target, args);		// Object 로 넘어오기 때문에 다운캐스팅
		
		// 보조 (공통) 업무 (advice)
		sw.stop();
		log.info("[ 타이머 종료 ]");
		log.info("[ TIME LOG Method : ADD ]");
		log.info("[ TIME LOG Method Time : " + sw.getTotalTimeMillis() +" ]");
		
		return null;
	}
}
