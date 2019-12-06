package AOP_Basic_02_JAVA;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Arrays;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.util.StopWatch;

/*
보조관심(공통관심) 구현
invoke : 하나의 함수가 여러개의 함수를 대리 처리
*/
public class LogPrintHandler implements InvocationHandler{

	private Object target; //실객체의 주소값
	public LogPrintHandler(Object object) {
		System.out.println("LogPrintHandler : 보조관심 생성자 호출");
		this.target = object;
	}
	//주업무(함수)
	//ADD , MUL , SUB 대리해서 처리
	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		System.out.println("Invoke 함수 호출");
		System.out.println("method : 호출 함수명 : " + method );
		System.out.println("method parameter : " + Arrays.toString(args));
				
		
		//보조(공통) 업무(advice)
		Log log = LogFactory.getLog(this.getClass());
		StopWatch sw = new StopWatch();
		sw.start();
		log.info("[ 타이머 시작 ^^]");
		
		//주업무 (실객체의 함수 호출)
		int result = (int)method.invoke(this.target, args);
		
		//보조(공통) 업무(advice)
		sw.stop();
		log.info("[ 타이머 종료^^ ]");
		log.info("[ TIME LOG Method ]");
		log.info("[ TIME LOG Method Time : " + sw.getTotalTimeMillis() + " ]");
		
		return result;
	}

}
