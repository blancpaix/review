package DI_Annotation_01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor;

public class MonitorViewer {
	
	private Recorder recorder;

	public Recorder getRecorder() {
		return recorder;
	}
	
	@Autowired  	// By Type	(IoC �����̳� �ȿ� Recorder Ÿ���� ���� ��ü�� ������ �ڵ� �ּ� ����)
	public void setRecorder(Recorder recorder) {
		this.recorder = recorder;
	}
	
}
