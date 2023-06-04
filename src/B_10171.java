import java.util.Scanner;

public class B_10171 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/10171
        // 문제 : 아래 예제와 같이 고양이를 출력하시오.

        Scanner myObj = new Scanner(System.in);

        System.out.println("\\    /\\"); // 역슬래시(\) 출력 방법 : \\
        System.out.println(" )  ( \')"); // 작은 따옴표(') 출력방법 : \'
        System.out.println("(  /  )");
        System.out.println(" \\(__)|");

        myObj.close();
    }

}