package DI;

public class NewRecordView {
	
	private NewRecord record;
	
	public NewRecordView(int kor, int eng, int math) {
		record = new NewRecord(kor, eng, math);
	}
	
	public void print () {
		System.out.println(record.total() + " / " + record.avg());
	}
}
