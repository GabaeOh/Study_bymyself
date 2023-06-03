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
        int award = 0;

        // 같은 눈이 3개일 경우
        if (A == B && B == C && A==C) {
            award = 10000 + A * 1000;
            // 같은 눈이 2개일 경우
        } else if (A == B || B == C || A == C) {
            if (A == B) {
                award = 1000 + A * 100;
            } else {
                award = 1000 + C * 100;
            }
            // 모두 다른 눈일 경우
        } else {
            if (A > B && A > C) {
                award = A * 100;
            } else if (B > A && B > C) {
                award = B * 100;
            } else{
                award = C * 100;
            }
        }
        System.out.println(award);

        myObj.close();
    }
}
