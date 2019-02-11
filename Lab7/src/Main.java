import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);

        //1
        System.out.print("Введите количество чисел n=");
        int n = in.nextInt();
        int nums[] = new int[100];
        for (int i=0; i<=n; i++) {
            int num = 0 + (int) (Math.random() * 100);
            System.out.print(" "+num);
            nums[i] = num;
        }
        System.out.println();
        System.out.print("Введите количество элементов расположенных в порядке возрастания k=");
        int k = in.nextInt();
        int a = 0;
        int i=1;
        do{
            if (nums[i-1] <= nums[i]){
                a++;
            } else {
                a = 1;
            }
            i++;
        } while ((a!=k) && (i<=n));
        String answer;
        if (a==k) answer = "Существует последовательность элементов расположенных в порядке возрастания";
        else
            answer = "Не существует последовательность элементов расположенных в порядке возрастания";
        System.out.println(answer);

        //2
        System.out.print("Введите количество чисел m=");
        int m = in.nextInt();
        n=1;
        double n2;
        double sum=0;
        do {
            n2 = (n*n)/(Math.sqrt(n*n+1));
            sum = sum+n2;
            System.out.println("Значение функции для "+n+" шага: "+n2);
            n++;
        } while(n2<=m);
        System.out.println("sum=" +sum);

        //3
        System.out.print("Введите точность e=");
        double e = in.nextDouble();
        System.out.print("Введите x=");
        double x1 = in.nextDouble();
        double y1, x_answ1, x_answ2;
        double c1 = x1;
        do{
            y1 = Math.log10((x1*x1)+1);
            x_answ1 = x1;
            x1 = x1 +e;
        } while(y1<1-e);
        do{
            y1 = Math.log10((c1*c1)+1);
            x_answ2 = c1;
            c1 = c1 - e;
        } while(y1<1-e);
        System.out.print("Корни равны: x1="+x_answ1+" x2="+x_answ2);
    }
}