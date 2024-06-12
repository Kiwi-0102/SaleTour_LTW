package vn.edu.hcmuaf.Controller;


import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.bean.Log;
import vn.edu.hcmuaf.bean.User;
import vn.edu.hcmuaf.serice.Mahoa;
import vn.edu.hcmuaf.serice.PublicIPFetcher;

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
import java.sql.Timestamp;
import java.util.Properties;
import java.util.Random;

import static vn.edu.hcmuaf.serice.getNation.Nation;

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession register = request.getSession();
            String email = request.getParameter("email") == null ? "" : request.getParameter("email").trim();
            String password = request.getParameter("pass1") == null ? "" : request.getParameter("pass1").trim();
            String confirmPassword = request.getParameter("pass2") == null ? "" : request.getParameter("pass2").trim();
            String username = request.getParameter("userName") == null ? "" : request.getParameter("userName").trim();
            String url = "otp.jsp";

            LogDAO logs = new LogDAO();
            Timestamp createdAt = new Timestamp(System.currentTimeMillis());

            String err = "";
            if (email.isEmpty() || password.isEmpty() || confirmPassword.isEmpty() || username.isEmpty()) {
                err = "Vui lòng nhập đầy đủ thông tin.";
                request.setAttribute("err", err);
                logs.insert(new Log(Log.INFO, -1, PublicIPFetcher.getPublicIP(), Nation(request),"Đăng kí tài khoản không thành công: \n"+"Lỗi"+err, createdAt, 0));
                request.getRequestDispatcher("./register.jsp").forward(request, response);
                return;
            }
            if (!email.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")) {
                err = "Email không hợp lệ.";
                request.setAttribute("err", "Email không hợp lệ.");
                logs.insert(new Log(Log.INFO, -1, PublicIPFetcher.getPublicIP(), Nation(request),"Đăng kí tài khoản không thành công: \n"+"Lỗi"+err, createdAt, 0));
                request.getRequestDispatcher("./register.jsp").forward(request, response);
                return;
            }
            if (!password.equals(confirmPassword)) {
                err = "Mật khẩu và xác nhận mật khẩu không khớp.";
                logs.insert(new Log(Log.INFO, -1, PublicIPFetcher.getPublicIP(), Nation(request),"Đăng kí tài khoản không thành công: \n"+"Lỗi"+err, createdAt, 0));
                request.setAttribute("err", "Mật khẩu và xác nhận mật khẩu không khớp.");
                request.getRequestDispatcher("./register.jsp").forward(request, response);
                return;
            }
            UserDAO userDAO = new UserDAO();
            if (userDAO.isEmailExists(email)) {
                err = "Email đã tồn tại.";
                logs.insert(new Log(Log.INFO, -1, PublicIPFetcher.getPublicIP(), Nation(request),"Đăng kí tài khoản không thành công: \n"+"Lỗi"+err, createdAt, 0));
                request.setAttribute("err", "Email đã tồn tại.");
                request.getRequestDispatcher("./register.jsp").forward(request, response);
                return;
            }
//            User user = new User(username, email, Mahoa.toSHA1(password));
//            userDAO.addUser(user);
//            request.getRequestDispatcher("./login.jsp").forward(request, response);

            if (err != null || !err.equals("")) {
                Random rand = new Random();
                int otpvalue = rand.nextInt(900000)+100000;

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
                RequestDispatcher dispatcher = request.getRequestDispatcher(url);
                register.setAttribute("mess_otp", "OTP được gửi đến email: \n" +email);// đang phát triển cái này

                register.setAttribute("action","register");
                register.setAttribute("otp_register", otpvalue);
                register.setAttribute("register", new User(username, email, Mahoa.toSHA1(password)));
                dispatcher.forward(request, response);

            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal Server Error");
        }
    }
}