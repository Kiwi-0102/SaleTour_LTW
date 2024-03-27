package vn.edu.hcmuaf.DB;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class Email {
    static final String from = "servicetournest@gmail.com";
    static final String pass = "zunmohjrlpafarak";

//    mail
//    tk servicetournest@gmail.com
//    mk tournestservice
    public static void main(String[] args) {

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");

        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, pass);
            }
        };

        Session session = Session.getInstance(props, auth);

        final String to = "21130615@st.hcmuaf.edu.vn";
//        final String to = "21130604@st.hcmuaf.edu.vn";

        MimeMessage message = new MimeMessage(session);
        try {
            message.addHeader("Content-type", "text/HTML; charset=UTF-8");
            message.setFrom(new InternetAddress(from));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));
            message.setSubject("VERIFY EMAIL");
            String htmlContent = "<html>" +
                    "<body>" +
                    "<h1>Xác nhận Email của bạn</h1>" +
                    "<p style=\"color:red;font-size:18px;\">Lưu ý: KHÔNG CHIA SẺ MÃ CODE VỚI BẤT KÌ AI để đảm bảo tính bảo mật tài khoản !!!</p>" +
                    "<p>Để xác minh danh tính, vui lòng nhập mã gồm 6 chữ số trên Trang xác minh Email: </p>" +
                    "<p style=\"font-size:30px;color:#00d8fe;text-align:center;\">923786</p>" +
                    "<p>Xin cảm ơn.</p>" +
                    "<p style=\"font-size:22px;color:#00d8fe;\">TOURNEST</p>" +
                    "<p style=\"color:#313535;\">Đây là email tự động. Vui lòng không trả lời email này.</p>" +

                    "</body>" +
                    "</html>";
            message.setContent(htmlContent, "text/html; charset=UTF-8");

            Transport.send(message);
            System.out.println("Đã gửi thành công");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}