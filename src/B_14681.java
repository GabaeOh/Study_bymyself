import java.util.Scanner;

public class B_14681 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/14681
        /* 문제 : . */

        Scanner myObj = new Scanner(System.in);
        int x = myObj.nextInt();
        int y = myObj.nextInt();

        if (x > 0 && y > 0) {
            System.out.println(1);
        } else if (x < 0 && y > 0) {
            System.out.println(2);
        } else if (x < 0 && y < 0) {
            System.out.println(3);
        } else if (x > 0 && y < 0) {
            System.out.println(4);
        }

    }
}