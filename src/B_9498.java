import java.util.Scanner;

public class B_9498 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/9498
        // 시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C
        // 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.

        Scanner myObj = new Scanner(System.in);
        int grade = myObj.nextInt();

        if (90 <= grade && grade <= 100) { // '&&'(and)를 사용해서 복수 조건 사용 / '||'(or)
            System.out.println("A");
        } else if (80 <= grade && grade <= 89) {
            System.out.println("B");
        } else if (70 <= grade && grade <= 79) {
            System.out.println("C");
        } else if (60 <= grade && grade <= 69) {
            System.out.println("D");
        } else {
            System.out.println("F");
        }
        myObj.close();
    }
}
