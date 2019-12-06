package DI_Annotation_05;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Program {

	public static void main(String[] args) {
		ApplicationContext context = 
				new AnnotationConfigApplicationContext(ConfigContext.class);		// ConfigContext.class => 이전에는 path 를 잡앗는데 바뀜 컴파일된 정보를 넘겨주면 됩니다
		
		User user = context.getBean("user",User.class);			// 첫번째 param 함수명,
		user.userMethod();

		User2 user2 = context.getBean("user2",User2.class);		// 첫번째 param 함수명,
		user2.userMethod2();
	}

}
