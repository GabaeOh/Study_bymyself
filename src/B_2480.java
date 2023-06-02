import java.util.Scanner;

public class B_2480 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/2480
        /*
         * 문제 : 3개 주사위의 나온 눈이 주어질 때, 상금을 계산하는 프로그램을 작성 하시오.
         */
        Scanner myObj = new Scanner(System.in);

        // 변수 선언
        int A = myObj.nextInt();
        int B = myObj.nextInt();
        int C = myObj.nextInt();

        B = B + C;

        // '분' 조건 맞추기
        if (B > 60 ) {
            B = B - 60;
            A = A + 1;
            if (B == 60) {
                B = 0;
                A = A + 1;
            }
        } else if (B == 60) {
            B = 0;
            A = A + 1;
        }

        if (A == 24) {
            A = 0;
        }
        System.out.println(A + " " + B);

        myObj.close();
    }
}
