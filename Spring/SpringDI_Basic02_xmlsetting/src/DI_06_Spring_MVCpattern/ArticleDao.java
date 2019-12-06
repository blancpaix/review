package DI_06_Spring_MVCpattern;

// 표준화 (Oracle, Mysql) 동일한 함수.... 되었다고 가정하면 이렇게 하나의 문장으로 처리가 가능한거고.. 아니면 뭐 여러개 만들겠지???

public interface ArticleDao {
	void insert(Article article);
	
}
