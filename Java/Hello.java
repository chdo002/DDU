
public class Hello {
     public static void main(String args[]) {
        Hello ff = new Hello();
        System.out.println(ff.toString());
        System.gc();
        System.out.println("sb.toString()");
     }
} 