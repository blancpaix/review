package DI_06_Spring_MVCpattern;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import DI_04_Spring.MessageBean;

public class HelloApp {

	public static void main(String[] args) {
		
		// new 로 보이는거 다 bean 으로 만들어주면 됩니다!
		
		// insert 작업
		/*
		// MySqlArticleDao articledao = new MySqlArticleDao();
		OracleArticleDao articledao = new OracleArticleDao();
		ArticleService articleservice = new ArticleService(articledao);
		
		Article article = new Article();
		articleservice.Write(article);
			// write 함수 호출은.. 그냥 메인에서 가는거라서 객체 주입까지는 아닙니다..?
		
		Bean 생성 이전에 한것
		*/ 
		
		// Bean 을 쓰려면 무조건 있어야 하는거고
		ApplicationContext context = new GenericXmlApplicationContext("classpath:DI_06_Spring_MVCpattern/DI_06.xml");
		// 컨테이너에 있는 bean 객체 얻기
		Article article = context.getBean("article", Article.class);
		ArticleService articleservice = context.getBean("articleservice", ArticleService.class);
		
		articleservice.Write(article);
		
		
	}
}
