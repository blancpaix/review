package DI2;

public class Program {

	public static void main(String[] args) {
		
		NewRecordView view = new NewRecordView();
		
		// �ʿ��ϴٸ�
		NewRecord record = new NewRecord(100, 50, 60);
		
		view.setRecord(record); 	// �ʿ��� ��ü�� �ּ� ����
		
		view.print();

	}
}
