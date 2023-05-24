import java.util.Scanner;

public class Forth {
    public static void main(String[] args) {
        Scanner myObj = new Scanner(System.in);

        int A = 0;
        int B = 0;

        if(B<10){
        A = myObj.nextInt(); 
        B = myObj.nextInt();

        System.out.println(A * B);

        }

       
    }
}
