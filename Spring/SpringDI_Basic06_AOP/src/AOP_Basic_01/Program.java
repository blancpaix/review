package AOP_Basic_01;

public class Program {

	public static void main(String[] args) {
		Calc calc = new Calc();

		int result = calc.Add(10000, 10000);
		System.out.println("Add result : " + result);
		
		int result2 = calc.Mul(5324, 4312);
		System.out.println("Mul result : " + result2);

	}

}
