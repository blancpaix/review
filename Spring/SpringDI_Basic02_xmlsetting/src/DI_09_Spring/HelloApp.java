package DI_09_Spring;

import java.util.HashMap;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class HelloApp {

	public static void main(String[] args) {
		/*
		ProtocolHandlerFactory factory = new ProtocolHandlerFactory();
		Map<String, ProtocolHandler> map = new HashMap<String, ProtocolHandler>();
		map.put("rss", new RssHandler());
		map.put("rest", new RestHandler());
		
		factory.setHandlers(map);
		*/
		
		ApplicationContext context = 
		 		new GenericXmlApplicationContext("classpath:DI_09_Spring/DI_09.xml");
		
		// get Bean 할게 없으니까 그냥 돌리면 됩니다
	
	}

}


