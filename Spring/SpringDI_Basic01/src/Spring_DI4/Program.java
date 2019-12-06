package Spring_DI4;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Program {

	public static void main(String[] args) {
		
		/*
		 ��ü�� �����ϰ� ���� �����ϴ� ������ spring �� ���, xml �� ��ġ�鼭 �ʿ䰡 ��������
		NewRecordView view = new NewRecordView();
		NewRecord record = new NewRecord();
		
		view.setRecord(record); 	// �ʿ��� ��ü�� �ּ� ����
		*/
		
		// view.input();
		// view.print();
		
		// ** Spring FrameWork �� �����Ѵ� �޸� ���� (IOC �����̳� ) **
		// ** �����̳� ����� // �� ������ �ʿ��� ��ü�� �÷� ���� �۾� **		�����̳ʴ� ��� ���ϴ� ����???
		
		// ApplicationContext Type �ε� �޸� ���� ������
		ApplicationContext context = new ClassPathXmlApplicationContext("DI_Config.xml");		// �����̳ʸ� �����ϴ� Ŭ�����Դϴٸ�? ����� ���� ��δ� ���� ���� �̸��� ��������
		// context �� �����̳��� �ּҰ�
		RecordView view = (RecordView) context.getBean("view");		// Object Ÿ������ �޾ƿ��µ� Interface �� �޾ƿ�. ĳ���õ� �ϰ�.. �� �׷�
		
		view.input();
		view.print();
		
		// �ٸ� �������� ��ü class �� ����ϴµ�
		// ��ǥ������ logFactory ���
		// �ٵ� �װ� ����?  �׷��� ����ϼ���... defendency �� ������
		
				

	}
}
