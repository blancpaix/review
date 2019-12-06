package DI_06_Spring_MVCpattern;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import DI_04_Spring.MessageBean;

public class HelloApp {

	public static void main(String[] args) {
		
		// new �� ���̴°� �� bean ���� ������ָ� �˴ϴ�!
		
		// insert �۾�
		/*
		// MySqlArticleDao articledao = new MySqlArticleDao();
		OracleArticleDao articledao = new OracleArticleDao();
		ArticleService articleservice = new ArticleService(articledao);
		
		Article article = new Article();
		articleservice.Write(article);
			// write �Լ� ȣ����.. �׳� ���ο��� ���°Ŷ� ��ü ���Ա����� �ƴմϴ�..?
		
		Bean ���� ������ �Ѱ�
		*/ 
		
		// Bean �� ������ ������ �־�� �ϴ°Ű�
		ApplicationContext context = new GenericXmlApplicationContext("classpath:DI_06_Spring_MVCpattern/DI_06.xml");
		// �����̳ʿ� �ִ� bean ��ü ���
		Article article = context.getBean("article", Article.class);
		ArticleService articleservice = context.getBean("articleservice", ArticleService.class);
		
		articleservice.Write(article);
		
		
	}
}
