package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.BookingDetailDTO;

import java.util.Properties;

public class MailService {
    final String FROM_EMAIL = "kurobaa123@gmail.com";
    final String PASSWORD = "aazjdasgyfgotitc";

    public void sendBookingInfo(String toEmail, BookingDetailDTO booking) {

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props,
                new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(FROM_EMAIL, PASSWORD);
                    }
                });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(FROM_EMAIL));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(toEmail)
            );

            message.setSubject("Thông tin booking tour #" + booking.getBookingID());

            String content =
                    "Xin chào " + booking.getCustomerName() + ",\n\n" +
                            "Thông tin tour của bạn:\n" +
                            "- Tour: " + booking.getTourName() + "\n" +
                            "- Ngày đi: " + booking.getDepartDate() + "\n" +
                            "- Tổng tiền: " + booking.getTotalPrice() + " VNĐ\n\n" +
                            "Chúc bạn có chuyến đi vui vẻ!";

            message.setText(content);

            Transport.send(message);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
