package vn.edu.hcmuaf.bean;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

public class Email {
    // mk yhcj qtqq gjmu skai
    static String noidung;
    public static final String from = "vutran08012k3@gmail.com";
    public static final String password = "adecxzixanhtztim";

    public static boolean sendEmail(String tomail, String tieude, String noidung){
        Properties props = new Properties();
        props.put("mail.smtp.host","smtp.gmail.com"); //SMTP HOST
        props.put("mail.smtp.port","587"); // TLS 587 SSL 465
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        };
        // Phiên làm việc
        Session session = Session.getInstance(props, auth);

        // Tạo một tin nhắn
        MimeMessage msg = new MimeMessage(session);

        try {
            // Kiểu nội dung
            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");

            // Người gửi
            msg.setFrom(from);

            // Người nhận
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(tomail, false));

            // Tiêu đề email
            msg.setSubject(tieude);

            // Quy đinh ngày gửi
            msg.setSentDate(new Date());

            // Quy định email nhận phản hồi
            // msg.setReplyTo(InternetAddress.parse(from, false))
            noidung = "<html>" +
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

            // Nội dung
            msg.setContent(noidung, "text/HTML; charset=UTF-8");

            // Gửi email
            Transport.send(msg);
            System.out.println("Gửi email thành công");
            return true;
        } catch (Exception e) {
            System.out.println("Gặp lỗi trong quá trình gửi email");
            e.printStackTrace();
            return false;
        }
    }

    public static void main(String[] args) {
        Email.sendEmail("21130549@st.hcmuaf.edu.vn", System.currentTimeMillis() + "", noidung);


    }
    };


