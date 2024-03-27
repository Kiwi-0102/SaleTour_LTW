package vn.edu.hcmuaf;

import java.io.IOException;
import java.util.Properties;

public class MailProperties {
    private static Properties prop = new Properties();

    static {
        try {
            try {
                prop.load(MailProperties.class.getClassLoader().getResourceAsStream("mail.properties"));
            } catch (IOException e) {
                throw new RuntimeException(e);
            }

        } catch (RuntimeException e) {
            throw new RuntimeException(e);
        }
    }
    public static  String getHost() {
        return prop.get("mail.smtp.host").toString();
    }
    public static  String getAuth() {
        return prop.get("mail.smtp.auth").toString();
    }
    public static  String getPort() {
        return prop.get("mail.smtp.port").toString();
    }
    public static  String getuser() {
        return prop.get("mail.user").toString();
    }
    public static  String getPass() {
        return prop.get("mail.pass").toString();
    }
}
