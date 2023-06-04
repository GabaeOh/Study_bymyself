import java.util.Scanner;

public class B_2739 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/2739
        /*
         * 문제 : N을 입력받은 뒤, 구구단 N단을 출력하는 프로그램을 작성하시오. 출력 형식에 맞춰서 출력하면 된다.
         */
        Scanner myObj = new Scanner(System.in);

        // 변수 선언
        int N = myObj.nextInt(); // 단수

        for (int M = 1; M < 10; M++) {
            int result = N * M;
            System.out.println(N + " * " + M + " = " + result);
        }
        myObj.close();
    }

}
