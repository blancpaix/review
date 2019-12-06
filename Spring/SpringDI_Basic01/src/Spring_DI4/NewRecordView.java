package Spring_DI4;

import java.util.Scanner;

public class NewRecordView implements RecordView{
	// 점수 출력하는 클래스
	private NewRecord record;
	
	// 부모타입이고 부모타입의 주소를 가지고 있는데 자식에서 부모거는 안보이는거임... 이거 예전에 이해했느데 잘 기억이 안난다...ㅜㅠ
	
	// 1. [생성자] 를 통해서 필요한 객체 생성 or 주입 >> DI
	// 2. 함수 ([ setter ]) 를 통해서 필요한 객체 주입 >> DI2
	// 3. 인터페이스 활용 (다형성)
	
						// Record 인터페이스 타입을 넣음
	public void setRecord(Record record) {		// 다형성 적용 (함수의 parameter 을 interface 로 구현 )
		// 함수의 parameter 를 통해서 NewRecord 객체의 주소
		this.record = (NewRecord) record;	// 다운캐스팅 하세용~
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