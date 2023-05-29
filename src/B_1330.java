import java.util.Scanner;

public class B_1330 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/1330
        // 두 정수 A와 B가 주어졌을 때, A와 B를 비교하는 프로그램을 작성하시오.

        Scanner myObj = new Scanner(System.in);
        int A = myObj.nextInt();
        int B = myObj.nextInt();

        if (A > B) {
            System.out.println(">");
        } else if (A < B) {
            System.out.println("<");
        } else {
            System.out.println("==");
        }
    }
}
