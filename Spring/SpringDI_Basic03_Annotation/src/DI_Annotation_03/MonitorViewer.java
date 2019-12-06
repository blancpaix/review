package DI_Annotation_03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor;
import org.springframework.beans.factory.annotation.Qualifier;

public class MonitorViewer {
	
	private Recorder recorder;

	public Recorder getRecorder() {
		return recorder;
	}
	
	// Annotation 들도 옵션을 가지고 있다
	// required = true (기본설정, 무조건 Injection) required = false (있으면 넣고, 없으면 말고~)
	@Autowired (required = true)  	// By Type	(IoC 컨테이너 안에 Recorder 타입을 갖는 객체가 있으면 자동 주소 기입)
	public void setRecorder(Recorder recorder) {
		this.recorder = recorder;
		System.out.println("Setter 주입 성공 : " + recorder);
	}	

}