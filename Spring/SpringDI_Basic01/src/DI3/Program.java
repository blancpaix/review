package DI3;

public class Program {

	public static void main(String[] args) {
		
		NewRecordView view = new NewRecordView();
		NewRecord record = new NewRecord();
		
		view.setRecord(record); 	// �ʿ��� ��ü�� �ּ� ����
		view.input();
		view.print();

	}
}
