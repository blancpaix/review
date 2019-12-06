package DI_Annotation_04;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor;
import org.springframework.beans.factory.annotation.Qualifier;

public class MonitorViewer {
	
	private Recorder recorder;

	public Recorder getRecorder() {
		return recorder;
	}
	
	// @Autowired (required = true)
	@Resource(name="yy")	// ���� Ÿ���� ������ �ִ� �ϴ��� name �ϳ� ����
	public void setRecorder(Recorder recorder) {
		this.recorder = recorder;
		System.out.println("Setter ���� ���� : " + recorder);
	}	

}