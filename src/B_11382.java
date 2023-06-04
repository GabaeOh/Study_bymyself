import java.util.Scanner;

public class B_11382 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/11382
        // 문제 : 꼬마 정민이는 이제 A + B 정도는 쉽게 계산할 수 있다. 이제 A + B + C를 계산할 차례이다!

        Scanner myObj = new Scanner(System.in);

        long A = myObj.nextLong();
        long B = myObj.nextLong();
        long C = myObj.nextLong();

        System.out.println(A + B + C);
        myObj.close();
    }
}