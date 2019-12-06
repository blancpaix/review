package DI_09_Spring;

import java.util.Map;

public class ProtocolHandlerFactory {
	
	public ProtocolHandlerFactory () {
		System.out.println("protocol Hnadler Factory ��ü ����");
	}
	
	// Map (key, value)
	private Map<String, ProtocolHandler> handlers;
	
	public void setHandlers(Map<String, ProtocolHandler> handlers) {
		this.handlers = handlers;
		// ���͸� �����ϰ��ִ� ��� �ʵ� �������� ���� �˴ϴ�...
		System.out.println("setter ���� ���� : " + this.handlers);
		
		
	}
	
}
