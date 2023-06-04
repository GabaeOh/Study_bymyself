import java.util.Scanner;

public class B_10950 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/10950
        /*
         * 문제 : 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
         */
        Scanner myObj = new Scanner(System.in);
        int T = myObj.nextInt();

        for (int i = 0; i <= T; i++) {

            int A = myObj.nextInt();
            int B = myObj.nextInt();

            int result = A + B;
        }

        System.out.println(result);
        myObj.close();
    }
}
