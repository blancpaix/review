package Spring_DI4;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Program {

	public static void main(String[] args) {
		
		/*
		 객체를 생성하고 값을 주입하는 행위가 spring 을 사용, xml 을 거치면서 필요가 없어져용
		NewRecordView view = new NewRecordView();
		NewRecord record = new NewRecord();
		
		view.setRecord(record); 	// 필요한 객체의 주소 주입
		*/
		
		// view.input();
		// view.print();
		
		// ** Spring FrameWork 이 제공한는 메모리 생성 (IOC 컨테이너 ) **
		// ** 컨테이너 만들고 // 그 공간에 필요한 객체를 올려 놓는 작업 **		컨테이너는 어디서 뭘하는 거임???
		
		// ApplicationContext Type 인데 메모리 저장 공간임
		ApplicationContext context = new ClassPathXmlApplicationContext("DI_Config.xml");		// 컨테이너를 생성하는 클래스입니다만? 여기는 파일 경로는 빼고 파일 이름만 넣을께용
		// context 은 컨테이너의 주소값
		RecordView view = (RecordView) context.getBean("view");		// Object 타입으로 받아오는데 Interface 로 받아옴. 캐스팅도 하고.. 뭐 그럼
		
		view.input();
		view.print();
		
		// 다른 여러가지 자체 class 를 사용하는데
		// 대표적으로 logFactory 사용
		// 근데 그게 없네?  그래서 사용하세요... defendency 에 있을겨
		
				

	}
}
