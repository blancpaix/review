package AOP_Basic_02_JAVA;

public class NewCalc implements Calc {

	@Override
	public int ADD(int x, int y) {
		// 보조업무 (공통업무)	cross-cutting Concern
		int sum = x+y;	// 주업무 (core Concern)
		// 보조업무 (공통업무)	cross-cutting Concern
		return sum;
	}

	@Override
	public int MUL(int x, int y) {
		// 보조업무 (공통업무)	cross-cutting Concern
		int mul = x*y;	// 주업무 (core Concern)
		// 보조업무 (공통업무)	cross-cutting Concern
		return mul;
	}

	@Override
	public int SUB(int x, int y) {
		// 보조업무 (공통업무)	cross-cutting Concern
		int sub = x-y;	// 주업무 (core Concern)
		// 보조업무 (공통업무)	cross-cutting Concern
		return sub;
	}

}
