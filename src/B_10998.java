import java.util.Scanner;

public class B_10998 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/10998
        // 문제 : 두 정수 A와 B를 입력받은 다음, A×B를 출력하는 프로그램을 작성하시오.

        Scanner myObj = new Scanner(System.in);

        int A = 0;
        int B = 0;

        if (B < 10) {
            A = myObj.nextInt();
            B = myObj.nextInt();

            System.out.println(A * B);

        }
        myObj.close();
    }
}
