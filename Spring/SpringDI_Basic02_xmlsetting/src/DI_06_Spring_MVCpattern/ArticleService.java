package DI_06_Spring_MVCpattern;

public class ArticleService {
	// 사용자의 요청에 따라서
	
	// 글쓰기
	
	// 목록보기

	// 수정하기
	
	// 서비스를 하기 위해서는 DB 작업.... DAO단
	private ArticleDao articledao;	// 변수가 실 객체 주소를 가지면 돼요...
		// articledao 가 안에서 new 복합 연관
		// articledao 가 밖에서 들어오면 집합 연관
	
	public ArticleService(ArticleDao articledao) {
		this.articledao = articledao; 		//주소값 할당	
		System.out.println("ArticleService 생성자 함수 호출");
	}
	
	// 글쓰기 서비스
	public void Write(Article article) {			// 여기가 순수한 defendency
		this.articledao.insert(article);
	}
	
	
	
	
	
}
