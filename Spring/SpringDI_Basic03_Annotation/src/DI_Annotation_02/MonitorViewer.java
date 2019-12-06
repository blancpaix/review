package DI_Annotation_02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor;
import org.springframework.beans.factory.annotation.Qualifier;

public class MonitorViewer {
	
	private Recorder recorder;

	public Recorder getRecorder() {
		return recorder;
	}
	
	@Autowired  	// By Type	(IoC �����̳� �ȿ� Recorder Ÿ���� ���� ��ü�� ������ �ڵ� �ּ� ����)
	@Qualifier("recorder_1")	// <qualifier value="recorder_1"></qualifier>
	public void setRecorder(Recorder recorder) {
		this.recorder = recorder;
		System.out.println("Setter ���� ���� : " + recorder);
	}
	
	// �Ϲ��Լ�
	@Autowired
	@Qualifier("recorder_2")
	public void Gmethod(Recorder rec) {
		System.out.println("Gmethod(rec) : " + rec);
	}
	
}
