package Spring_DI4;

import java.util.Scanner;

public class NewRecordView implements RecordView{
	// ���� ����ϴ� Ŭ����
	private NewRecord record;
	
	// �θ�Ÿ���̰� �θ�Ÿ���� �ּҸ� ������ �ִµ� �ڽĿ��� �θ�Ŵ� �Ⱥ��̴°���... �̰� ������ �����ߴ��� �� ����� �ȳ���...�̤�
	
	// 1. [������] �� ���ؼ� �ʿ��� ��ü ���� or ���� >> DI
	// 2. �Լ� ([ setter ]) �� ���ؼ� �ʿ��� ��ü ���� >> DI2
	// 3. �������̽� Ȱ�� (������)
	
						// Record �������̽� Ÿ���� ����
	public void setRecord(Record record) {		// ������ ���� (�Լ��� parameter �� interface �� ���� )
		// �Լ��� parameter �� ���ؼ� NewRecord ��ü�� �ּ�
		this.record = (NewRecord) record;	// �ٿ�ĳ���� �ϼ���~
	}
	
	@Override
	public void print () {
		System.out.println(record.total() + " / " + record.avg());
	}
	
	@Override
	public void input () {
		Scanner scan = new Scanner(System.in);
		
		System.out.println("kor : " );
		record.setKor(scan.nextInt());
		
		System.out.println("eng : " );
		record.setEng(scan.nextInt());
		
		System.out.println("math : " );
		record.setMath(scan.nextInt());
		
		
	}
	
}