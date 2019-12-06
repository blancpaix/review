package DI_09_Spring;

import java.util.Map;

public class ProtocolHandlerFactory {
	
	public ProtocolHandlerFactory () {
		System.out.println("protocol Hnadler Factory 객체 생성");
	}
	
	// Map (key, value)
	private Map<String, ProtocolHandler> handlers;
	
	public void setHandlers(Map<String, ProtocolHandler> handlers) {
		this.handlers = handlers;
		// 세터를 구현하고있는 멤버 필드 변수명을 쓰면 됩니다...
		System.out.println("setter 주입 성공 : " + this.handlers);
		
		
	}
	
}
