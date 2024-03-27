package vn.edu.hcmuaf.Controller;




import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.bean.User;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "ForgotPassword", value = "/forgotPassword")
public class ForgotPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String error = "12345";
        boolean checkError = false;
        String url = "otp.jsp";
        User user = new User();
        UserDAO userDAO  = new UserDAO();


        Map<String, User> checkmail = userDAO.checkMail();
        Pattern emailPattern = Pattern.compile("\\w+@\\w+(\\.\\w+)+(\\.\\w+)*");
        Matcher emailMatcher = emailPattern.matcher(email);
        RequestDispatcher dispatcher = null;

        if (email == null || email.equals("")) {
        checkError = true;
        error = "Vui lòng nhập Email của bạn";
        url = "forgetpass.jsp";
       } else if (!emailMatcher.matches()) {
            checkError = true;
            error = "Email nhập vào không hợp lệ";
            url = "forgetpass.jsp";
        }else if (!checkmail.containsKey(email)) {
            checkError = true;
            error = "Email không tồn tại trong hệ thống";
            url = "forgetpass.jsp";
        }

        if (checkError==true) {
            request.setAttribute("error", error);
            dispatcher = request.getRequestDispatcher(url);
            dispatcher.forward(request, response);

        } else if (checkError==false) {
            int otpvalue = 0;
            HttpSession forgot_Session = request.getSession();

            if (email != null || !email.equals("")) {
                Random rand = new Random();
                otpvalue = rand.nextInt(900000)+100000;

                String to = email;

                Properties props = new Properties();
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.socketFactory.port", "465");
                props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.port", "465");
                Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("servicetournest@gmail.com", "zunmohjrlpafarak");// Put your email


                    }
                });

                try {
                    MimeMessage message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(email));
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                    message.setSubject("VERIFY EMAIL FROM TOURNEST");
                    String htmlContent = String.format(
                            "<html>" +
                                    "<body>" +
                                    "<h1>Xác nhận Email của bạn</h1>" +
                                    "<p style=\"color:red;font-size:18px;\">Lưu ý: KHÔNG CHIA SẺ MÃ CODE VỚI BẤT KÌ AI để đảm bảo tính bảo mật tài khoản !!!</p>" +
                                    "<p>Để xác minh danh tính, vui lòng nhập mã gồm 6 chữ số trên Trang xác minh Email: </p>" +
                                    "<p style=\"font-size:30px;color:#00d8fe;text-align:center;\">%d</p>" + // %d sẽ được thay thế bởi giá trị của otpvalue
                                    "<p>Xin cảm ơn.</p>" +
                                    "<p style=\"font-size:22px;color:#00d8fe;\">TOURNEST</p>" +
                                    "<p style=\"color:#313535;\">Đây là email tự động. Vui lòng không trả lời email này.</p>" +
                                    "</body>" +
                                    "</html>", otpvalue);
                    message.setContent(htmlContent, "text/html; charset=UTF-8");
                    // send message
                    Transport.send(message);
                    System.out.println("Email đã được gửi đi");
                } catch (Exception e) {
//                  throw new RuntimeException(e);
                    System.out.println("Lỗi khi quên mật khẩu:" + e.getMessage());
                    request.setAttribute("error", "Đã xảy ra lỗi"+e.getMessage()+" khi gửi mail");
                    request.getRequestDispatcher("forgetpass.jsp").forward(request, response);
                }
                dispatcher = request.getRequestDispatcher(url);
                forgot_Session.setAttribute("mess_otp", "OTP được gửi đến email: \n" +email);// đang phát triển cái này

                forgot_Session.setAttribute("otp", otpvalue);
                forgot_Session.setAttribute("email", email);
                dispatcher.forward(request, response);

            }

        }
    }
}


