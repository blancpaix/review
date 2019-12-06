package Spring_DI4;

// vo, dto, domain �� ���� ������ ���� Ŭ����.		value object, value transfer object, domain
// 		�����͸� ���� �� �ִ� Ŭ����

public class NewRecord implements Record {
	private int kor;
	private int eng;
	private int math;
	
	public NewRecord() {}
	
	
	public NewRecord(int kor, int eng, int math) {
		super();
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}
	
	// �ʿ�� : ������ �Լ� �߰� ��� ///////////////////////
	@Override
	public int total () {
		return this.kor + this.eng + this.math;
	}
	
	@Override
	public float avg () {
		return total () / 3.0f;
	}
	//////////////////////////////////////////////

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getMath() {
		return math;
	}

	public void setMath(int math) {
		this.math = math;
	}
	
}
