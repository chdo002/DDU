
import java.util.HashMap;
import java.util.Set;

public class Hello {
     public static void main(String args[]) {

     
        HashMap<String,Object> map = new HashMap<>(3);
        map.put("name","小明");
        map.put("sex","男");
        map.put("age","16");

        StringBuilder sb = new StringBuilder();
        Set<String> keySet = map.keySet();
        for (String str : keySet) {
            sb
            .append(str).append(":")
            .append(String.valueOf(map.get(str)))
            .append("-");
        }
        System.out.println(sb.toString());
     }
 } 