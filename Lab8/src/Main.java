import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);

        //2
        System.out.print("Введите точность e=");
        double e = in.nextDouble();
        System.out.print("Введите x=");
        double x = in.nextDouble();
        double n = 1;
        double y, sum;
        sum = 0;
        y = 1;
        while(y>e){
            y = n / Math.pow(x, n);
            System.out.println("Для "+n+" шага y="+y);
            sum = sum +y;
            n++;
        }
        System.out.println("sum="+sum);

        //3
        double a = 1.0;
        int c = 1;
        sum = 0.0;
        y = 1.0;
        n = 1.0;
        while (n<=2.0){
            a=Math.sin(n);
            y=1.0;
            while(y<n){
                a=Math.sin(a);
                y+=0.1;
            }
            if (c % 2 == 1){
                sum = sum + a;
            } else{
                sum = sum - a;
            }
            c++;
            n+=0.1;
        }
        System.out.println("sum="+sum);
    }
}
