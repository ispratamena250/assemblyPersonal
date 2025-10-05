import java.util.Vector;
import java.util.Scanner;

public class Vector4{
	public static void main(String args[]){
		Scanner sc = new Scanner(System.in);
		Vector<Integer> xs = new Vector<>(7);
		
		System.out.print("First integer: ");
		int x = sc.nextInt();

		xs.add(x);

		for(int i=1; i<7; i++){
			x++;
			xs.add(x);
		}

		System.out.print("{");
		for(int i=0; i<7; i++){
			System.out.print(xs.get(i) + ", ");
		}
		System.out.println("}");

		sc.close();
	}
}
