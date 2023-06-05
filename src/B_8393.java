import java.util.Scanner;

public class B_8393 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/8393
        /*
         * 문제 : n이 주어졌을 때, 1부터 n까지 합을 구하는 프로그램을 작성하시오.
         */

         //변수 선언
        Scanner myObj = new Scanner(System.in);
        int N = myObj.nextInt();
        int result = 0;
       
        for (int i = 1; i <= N; i++) {

          result = i+N;
        }
       
        System.out.println(result);
        myObj.close();
    }
}
