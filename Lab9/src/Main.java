import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);

        //2.4
        System.out.print("Введите количество строк n=");
        int n = in.nextInt();
        System.out.print("Введите количество столбцов m=");
        int m = in.nextInt();
        int nums[][] = new int[100][100];
        for (int i=0; i<n; i++) {
            for (int j=0; j<m; j++) {
                int num = 0 + (int) (Math.random() * 100);
                System.out.print("     " + num);
                nums[i][j] = num;
                nums[n+1][j] = nums[n+1][j] + num;
            }
            System.out.println();
        }
        System.out.println("Сумма элементов каждого столбца:");
        int max = nums[n+1][0];
        int max_j = 0;
        for (int j=0; j<m; j++) {
            System.out.print(" " + nums[n+1][j]);
            if (max < nums[n+1][j]){
                max = nums[n+1][j];
                max_j = j;
            }
        }
        System.out.println();
        System.out.println("Столбец сумма элементов, которого максимальна:");
        for (int i=0; i<n; i++) {
            System.out.print(nums[i][max_j]);
            System.out.println();
        }

        //2.2
        System.out.print("Введите x=");
        int x = in.nextInt();
        int k = 1;
        double fact = 1;
        double y2 = Math.cos(x);
        double y = 1.0;
        while (Math.abs(y)>=Math.abs(y2)){
            y=0;
            fact=fact*(2*k);
            y=y+(Math.pow(-1,k)*(Math.pow(x,2*k)/fact));
            k++;
            System.out.println("y1="+y);
        }
        System.out.println("y1="+y);
        System.out.println("y2="+y2);
    }
}
