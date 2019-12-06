package DI2;

public class Program {

	public static void main(String[] args) {
		
		NewRecordView view = new NewRecordView();
		
		// 필요하다면
		NewRecord record = new NewRecord(100, 50, 60);
		
		view.setRecord(record); 	// 필요한 객체의 주소 주입
		
		view.print();

	}
}
