import java.util.Scanner;
public class B_2588 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/2588
        /*  (세 자리 수) × (세 자리 수)는 다음과 같은 과정을 통하여 이루어진다.
            (1)과 (2)위치에 들어갈 세 자리 자연수가 주어질 때 (3), (4), (5), (6)위치에 들어갈 값을 구하는 프로그램을 작성하시오. */
    
      Scanner myObj = new Scanner(System.in);
      //변수 선언
      int A = myObj.nextInt();
      int B = myObj.nextInt();
      
        // 일의 자리 뽑기 
        // B%100%10

        //십의 자리 뽑기
        // B%100/10

        //백의 자리 
        // B/100

      // 사칙연산
      System.out.println (A*(B%100%10));
      System.out.println (A*(B%100/10));
      System.out.println (A*(B/100));
      System.out.println (A*B);

    }
}
