package DI_06_Spring_MVCpattern;

public class ArticleService {
	// ������� ��û�� ����
	
	// �۾���
	
	// ��Ϻ���

	// �����ϱ�
	
	// ���񽺸� �ϱ� ���ؼ��� DB �۾�.... DAO��
	private ArticleDao articledao;	// ������ �� ��ü �ּҸ� ������ �ſ�...
		// articledao �� �ȿ��� new ���� ����
		// articledao �� �ۿ��� ������ ���� ����
	
	public ArticleService(ArticleDao articledao) {
		this.articledao = articledao; 		//�ּҰ� �Ҵ�	
		System.out.println("ArticleService ������ �Լ� ȣ��");
	}
	
	// �۾��� ����
	public void Write(Article article) {			// ���Ⱑ ������ defendency
		this.articledao.insert(article);
	}
	
	
	
	
	
}
