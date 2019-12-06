package DI_Annotation_01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor;

public class MonitorViewer {
	
	private Recorder recorder;

	public Recorder getRecorder() {
		return recorder;
	}
	
	@Autowired  	// By Type	(IoC 컨테이너 안에 Recorder 타입을 갖는 객체가 있으면 자동 주소 기입)
	public void setRecorder(Recorder recorder) {
		this.recorder = recorder;
	}
	
}
