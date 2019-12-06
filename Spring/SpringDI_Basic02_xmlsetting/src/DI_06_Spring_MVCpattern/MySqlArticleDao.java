package DI_06_Spring_MVCpattern;

public class MySqlArticleDao  implements ArticleDao{
	
	@Override
	public void insert (Article article) {
		System.out.println("Mysql Insert 구문 실행");
		
	}
}
