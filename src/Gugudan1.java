// 모든 구구단 2단 만들기 
public class Gugudan1 {
    public static void main(String[] args) {
        int num = 2; //단수 
        int mynum = 1; //곱해지는 값
        while(num <= 9 ){
            mynum = 1;
            while (mynum <= 9 )  {
                System.out.println( num * mynum);
            mynum = mynum + 1; 
            }
            System.out.println();
            num = num + 1;
        } 
    }
}
