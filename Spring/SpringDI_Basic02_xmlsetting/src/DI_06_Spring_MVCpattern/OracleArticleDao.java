package DI_06_Spring_MVCpattern;

public class OracleArticleDao implements ArticleDao{
	
	@Override
	public void insert (Article article) {
		System.out.println("Oracle Insert ½ÇÇà");
		
	}
}
