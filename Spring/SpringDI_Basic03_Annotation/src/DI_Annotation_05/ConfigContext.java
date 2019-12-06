package DI_Annotation_05;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/*
 ConfigContext 자바파일로 xml 설정 파일을 대체하겠다
 ConfigContext 자바 가지고 객체의 생성과 조립(주입)
 
 @Configuration (설정파일)
 @Bean (객체 생성) 함수 기반
 
 xml 문서라면
 
 <bean id="user" class="DI_Annotation_05.User">			// %% 이거 밑에서 만듦
 <bean id="user2" class="DI_Annotation_05.User2">
 
 위 코드를 자바파일에서는 함수로 만들어서 객체를 리턴
*/

@Configuration			// 이런 Annotation Spring 컨테이너가 이 파일을 설정 파일로 인지합니다.
public class ConfigContext {

	@Bean
	// 접근자는 public 밖에서 닫기 가능해야 하니까		
	public User user() {
		return new User();
	}
	// <bean id="user" class="DI_Annotation_05.User"> 이게 이거임 
	
	@Bean
	public User2 user2() {		// id 랑 함수명을 일치시켜줌
		return new User2();
	}
	// <bean id="user2" class="DI_Annotation_05.User2">
	
	

}


