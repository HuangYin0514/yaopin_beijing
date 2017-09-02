package com.tcmkb.utils;


import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class SendEmail {

    public static void sendEmail(String reciver,String context) throws Exception
    {
        //1.得到session

        Properties properties = new Properties();
        properties.setProperty("mail.host", "smtp.qq.com");
        properties.setProperty("mail.transport.protocol", "smtp");
        properties.setProperty("mail.smtp.auth", "true");
        properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.setProperty("mail.smtp.port", "465");
        properties.setProperty("mail.smtp.socketFactory.port", "465");
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                // TODO Auto-generated method stub
                return new PasswordAuthentication(MailInfo.ADMIN_USER_NAME, MailInfo.ADMIN_USER_PASS);
            }
        };

        Session session = Session.getInstance(properties,auth);

        //2.创建MimeMEssage

        MimeMessage msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress(MailInfo.ADMIN_USER_NAME)); //设置发件人
        msg.setRecipients(Message.RecipientType.TO, reciver);//设置收件人

        msg.setSubject("找回密码");
        msg.setContent(context,"text/html;charset=utf-8");

        //3.发送
        Transport.send(msg);

    }
}