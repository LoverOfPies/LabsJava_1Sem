import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);

        //2
        System.out.print("Введите количество чисел n=");
        int n = in.nextInt();
        int nums[] = new int[100];
        for (int i=0; i<n; i++) {
            int num = 0 + (int) (Math.random() * 10);
            System.out.print(" "+num);
            nums[i] = num;
        }
        System.out.println();
        for (int i=0; i<n; i++) {
            int num = nums[i];
            for (int j=i; j<n; j++){
                if(i!=j){
                    if (num==nums[j]){
                        nums[i]=-1;
                        nums[j]=-1;
                    }
                }
            }
        }
        int k =0;
        for (int i=0; i<n; i++) {
            if (nums[i]!=-1) k++;
        }
        System.out.println("Цифр входят в последовательность по одному разу: "+k);

        //3
        System.out.print("Введите количество чисел n=");
        n = in.nextInt();
        for (int i=0; i<n; i++) {
            int num = 0 + (int) (Math.random() * 10);
            System.out.print(" "+num);
            nums[i] = num;
        }
        System.out.println();
        for (int i=0; i<n; i++) {
            for (int j=i; j<n; j++) {
                if(nums[i]>=nums[j]){
                    int num = nums[i];
                    nums[i] = nums[j];
                    nums[j] = num;
                }
            }
            System.out.print(" "+nums[i]);
        }
        System.out.println();

        //4
        System.out.print("Введите количество чисел n=");
        n = in.nextInt();
        for (int i=0; i<n; i++) {
            int num = 0 + (int) (Math.random() * 10);
            System.out.print(" "+num);
            nums[i] = num;
        }
        System.out.println();
        k = 0;
        int nums2[] = new int[100];
        for (int i=1; i<n-1; i++) {
            if(nums[i]<nums[i-1] && nums[i]<nums[i+1]){
                nums2[k]=nums[i];
                k++;
                System.out.print(" "+nums[i]);
            }
        }
    }
}