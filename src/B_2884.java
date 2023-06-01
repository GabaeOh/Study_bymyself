import java.util.Scanner;

public class B_2884 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/2884
        /* 문제 :  "45분 일찍 알람 설정하기" 원래 설정되어 있는 알람을 45분 앞서는 시간으로 바꾸는 것이다.*/

        Scanner myObj = new Scanner(System.in);
        int H = myObj.nextInt();
        int M = myObj.nextInt();

        if( M < 15 ){
            System.out.print(H-1);
            System.out.print(M+60-45);
        }
        else if( M > 15 ){
            System.out.print(H);
            System.out.print(M-45);
        }

        else if (H == 0){
            System.out.println(23);
            System.out.println(M-45);
        }
       
    }
}