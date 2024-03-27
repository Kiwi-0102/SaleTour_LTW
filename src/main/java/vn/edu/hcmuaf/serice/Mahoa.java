package vn.edu.hcmuaf.serice;

import java.security.MessageDigest;
import java.util.Base64;

public class Mahoa {
    // md5
    // sha-1 => thường được sử dụng
    public static String toSHA1(String str) {
        String salt = "Tournest"; // Làm cho mật khẩu phức tạp
        String result = null;

        str = str + salt;
        try {
            byte[] dataBytes = str.getBytes("UTF-8");
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            result = Base64.getEncoder().encodeToString(md.digest(dataBytes));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public static void main(String[] args) {
        System.out.println(toSHA1("123456"));
    }
}
