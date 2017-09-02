package com.tcmkb.utils;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;

import com.sun.mail.smtp.SMTPMessage;
/**
 * 发送邮件的工具类
 * 
 * @author wangwd(wangwd@guoyatech.com)
 * @version $Revision:$, $Date: 2017年7月18日 下午3:57:10$
 * @LastChanged $Author:$, $Date::                    #$
 */
public class MailUtils {
  
  public static boolean sendMail(String to,String subject,String content,String[] copyTo){
    try {
      Properties props=new Properties();
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.host", "mail.prismtech.com.cn");
      Authenticator auth=new Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
          Properties p=new Properties();
          try {
            p.load(new FileInputStream("D:/Workspace/tcmkb/src/jdbc.properties"));
          } catch (FileNotFoundException e) {
            e.printStackTrace();
          } catch (IOException e) {
            e.printStackTrace();
          }
          String username = p.getProperty("user");
          String password = p.getProperty("pass");
             if ((username != null) && (username.length() > 0) && (password != null)
               && (password.length   () > 0)) {
                 return new PasswordAuthentication(username, password);
             }
             return null;
        }
      };
      Session session=Session.getInstance(props, auth);
      session.setDebug(true);
      Message message=new SMTPMessage(session);
      message.setFrom(new InternetAddress("miweidong@prismtech.com.cn"));
      message.setSubject(subject);
      message.setText(content);
      message.setRecipient(RecipientType.TO, new InternetAddress(to));
      //邮件抄送
      if(copyTo!=null&&copyTo.length>0){
        InternetAddress copyAddress[]=new InternetAddress[copyTo.length];
        for(int i=0;i<copyTo.length;i++){
          copyAddress[i]=new InternetAddress(copyTo[i]);
        }
        message.addRecipients(RecipientType.CC, copyAddress);
      }
      Transport sender=session.getTransport("smtp");
      sender.connect();
      Transport.send(message);
      sender.close();
    } catch (MessagingException e) {
      e.printStackTrace();
    }
    return true;
  }
  
  public static void main(String[] args) {
    sendMail("624867029@qq.com","test","测试程序出错发送邮件",null);
  }
}
