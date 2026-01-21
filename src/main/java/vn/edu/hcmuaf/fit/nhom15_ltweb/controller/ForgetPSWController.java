package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.MD5;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.UserService;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;


@WebServlet(name = "ForgetPSWController", value = "/forgetpsw")
public class ForgetPSWController extends HttpServlet {
    UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/Fpsw.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        boolean rs = userService.existsByEmail(email);
        if (rs) {
            String newPSW = generatePassword(8);
            String hashPSW = MD5.md5(newPSW);
            userService.updatePSW(email, hashPSW);
            sendEmail(email, hashPSW);
            request.getRequestDispatcher("/noti_fpsw.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Khong tim thay tai khoan");
            request.getRequestDispatcher("/Fpsw.jsp").forward(request, response);
        }
    }

    private void sendEmail(String email, String hashPSW) {
        final String fromEmail = "kurobaa123@gmail.com";
        final String password = "aazjdasgyfgotitc"; // mật khẩu ứng dụng

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(email)
            );
            message.setSubject("Reset mật khẩu");
            message.setText("Mật khẩu mới của bạn là: " + hashPSW);

            Transport.send(message);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String generatePassword(int length) {

        String upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String lower = "abcdefghijklmnopqrstuvwxyz";
        String number = "0123456789";
        String special = "@#$%^&+=!";

        String allChars = upper + lower + number + special;
        Random random = new Random();

        StringBuilder password = new StringBuilder();

        // Bắt buộc có ít nhất 1 ký tự mỗi loại
        password.append(upper.charAt(random.nextInt(upper.length())));
        password.append(lower.charAt(random.nextInt(lower.length())));
        password.append(number.charAt(random.nextInt(number.length())));
        password.append(special.charAt(random.nextInt(special.length())));

        // Các ký tự còn lại sinh ngẫu nhiên
        for (int i = 4; i < length; i++) {
            password.append(allChars.charAt(random.nextInt(allChars.length())));
        }

        // Trộn thứ tự cho khó đoán
        return shuffleString(password.toString());
    }

    private String shuffleString(String input) {
        char[] chars = input.toCharArray();
        Random random = new Random();

        for (int i = chars.length - 1; i > 0; i--) {
            int j = random.nextInt(i + 1);
            char temp = chars[i];
            chars[i] = chars[j];
            chars[j] = temp;
        }
        return new String(chars);
    }

}