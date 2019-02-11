import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);

        //1
        System.out.print("Введите a: ");
        int a = in.nextInt();
        System.out.print("Введите b: ");
        int b = in.nextInt();
        System.out.print("Введите c: ");
        int c = in.nextInt();
        System.out.println("max="+ max(a, max(b, c)));

        //2
        System.out.print("Введите x: ");
        int x = in.nextInt();
        System.out.print("Введите y: ");
        int y = in.nextInt();
        int z =0;
        if (x<0)
            z = max(x,y);
        else
            z = x < y ? x : y;
        System.out.println("z="+ z);

        //3
        System.out.print("Выберите график (a или b): ");
        String s = in.next();
        System.out.print("Введите x: ");
        double x1 = in.nextDouble();
        double y1 = 0;
        if (s.charAt(0) == 'a'){
            if (x1<0)
                y1 = x1 * -1;
            else
                y1=x1*x1;
        }
        if (s.charAt(0) == 'b'){
            if (x1<0)
                y1 = 1;
            else
                y1 = Math.cos(x1);
        }
        System.out.print("y="+y1);
    }

    public static int max(int a, int b){
        int z = a > b ? a : b;
        return z;
    }
}