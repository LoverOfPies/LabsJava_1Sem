import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);

        //1
        System.out.print("Введите количество чисел n=: ");
        int n = in.nextInt();
        int k=0;
        for (int i=0; i<=n; i++) {
            int num = 0 + (int) (Math.random() * 100);
            System.out.print(" "+num);
            if (num % 2 == 0) k++;
        }
        System.out.println();
        System.out.println("Количество четных чисел: "+k);

        //2
        System.out.print("Введите начало интервала a=");
        int a = in.nextInt();
        System.out.print("Введите конец интервала b=");
        int b = in.nextInt();
        System.out.print("Введите количество значений функции k=");
        k = in.nextInt();
        double c = b-a;
        c = c /k;
        for (double i = a; i<b; ) {
            double y = Math.tan(2*i) + Math.pow( i, 1.0 / 5 );
            System.out.print("y="+y);
            System.out.println(" x="+i);
            i+=c;
        }

        //3
        System.out.print("Введите количество чисел n=: ");
        n = in.nextInt();
        int max=0;
        for (int i=0; i<=n; i++) {
            int num = 0 + (int) (Math.random() * 100);
            System.out.print(" "+num);
            int z = (max < num) ? num : max;
            max = z;
        }
        System.out.println();
        System.out.println("max="+max);
    }
}