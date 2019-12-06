package DI_Annotation_03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor;
import org.springframework.beans.factory.annotation.Qualifier;

public class MonitorViewer {
	
	private Recorder recorder;

	public Recorder getRecorder() {
		return recorder;
	}
	
	// Annotation �鵵 �ɼ��� ������ �ִ�
	// required = true (�⺻����, ������ Injection) required = false (������ �ְ�, ������ ����~)
	@Autowired (required = true)  	// By Type	(IoC �����̳� �ȿ� Recorder Ÿ���� ���� ��ü�� ������ �ڵ� �ּ� ����)
	public void setRecorder(Recorder recorder) {
		this.recorder = recorder;
		System.out.println("Setter ���� ���� : " + recorder);
	}	

}