import java.util.Scanner;

public class B_10950 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/10950
        /*
         * 문제 : 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
         */

         //변수 선언
        Scanner myObj = new Scanner(System.in);
        int T = myObj.nextInt();
        int[] result;
        result = new int[T]; // 배열은 T갯수 만큼 만들었다고 선언

        for (int i = 0; i < T; i++) {

            int A = myObj.nextInt();
            int B = myObj.nextInt();

            result[i] = A + B; // 받은 값을 array배열에 순서대로 값을 넣어줌
           
        }
        for(int i = 0; i < T; i++){   // for문을 사용해서 array 값을 한꺼번에 출력 받기 
            System.out.println(result[i]);
        }
        myObj.close();
    }
}
