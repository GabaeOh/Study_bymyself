import java.util.Scanner;

public class B_2525 {
    public static void main(String[] args) {
        // refer : https://www.acmicpc.net/problem/2525
        /*
         * 문제 : 훈제오리구이를 시작하는 시각과 오븐구이를 하는 데 필요한 시간이 분단위로 주어졌을 때,
         * 오븐구이가 끝나는 시각을 계산하는 프로그램을 작성하시오.
         */
        Scanner myObj = new Scanner(System.in);

        // 변수 선언
        int hour = myObj.nextInt();
        int min = myObj.nextInt();
        int oven_hour = myObj.nextInt();

        min = min + oven_hour;

        if(min > 60 ){
            hour = hour + (min / 60);
            min = min % 60; 
        }

        if (hour >= 24) {
            hour = hour % 24; //hour = hour - 24;
        }

        System.out.println(hour + " " + min);

        myObj.close();
    }
}
