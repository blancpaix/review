package AOP_Basic_02_JAVA;

public class NewCalc implements Calc {

	@Override
	public int ADD(int x, int y) {
		// �������� (�������)	cross-cutting Concern
		int sum = x+y;	// �־��� (core Concern)
		// �������� (�������)	cross-cutting Concern
		return sum;
	}

	@Override
	public int MUL(int x, int y) {
		// �������� (�������)	cross-cutting Concern
		int mul = x*y;	// �־��� (core Concern)
		// �������� (�������)	cross-cutting Concern
		return mul;
	}

	@Override
	public int SUB(int x, int y) {
		// �������� (�������)	cross-cutting Concern
		int sub = x-y;	// �־��� (core Concern)
		// �������� (�������)	cross-cutting Concern
		return sub;
	}

}
