import java.util.Scanner;

public class B_2884 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/2884
        /*
         * 문제 : "45분 일찍 알람 설정하기"
         * 원래 설정되어 있는 알람을 45분 앞서는 시간으로 바꾸는 것이다.
         */

        Scanner myObj = new Scanner(System.in);
        int H = myObj.nextInt();
        int M = myObj.nextInt();

        if (M < 45) {
            if (H == 0) {
                H = 23;
            } else {
                H--;
            }
            M = M + 60 - 45;
        } else {
            M -= 45;
        }

        System.out.println(H + " " + M);

        myObj.close();

    }
}
// 처음에 내가 짠 코드
// if( H > 0 && M < 45 ){
// int a = H-1;
// int b = M+60-45;
// System.out.print(a + " " + b);
// }
// else if( H> 0 && M > 45 ){
// int c = H;
// int d = M-45;
// System.out.print(c + " " + d);
// }
// else if (H == 0 && M < 45 ){
// int f = M+60-45;
// System.out.print(23 + " " + f);
// }
// else if (H == 0 && M > 45){
// int h = M-45;
// System.out.print(H + " " + h);
// }