package DI2;

public class NewRecordView {
	// ���� ����ϴ� Ŭ����
	private NewRecord record;
	
	
	// 1. [������] �� ���ؼ� �ʿ��� ��ü ���� or ���� >> DI
	// 2. �Լ� ([ setter ]) �� ���ؼ� �ʿ��� ��ü ���� >> DI2
	
	public void setRecord(NewRecord record) {
		// �Լ��� parameter �� ���ؼ� NewRecord ��ü�� �ּ�
		this.record = record;
	}
	
	public void print () {
		System.out.println(record.total() + " / " + record.avg());
	}
	
}
