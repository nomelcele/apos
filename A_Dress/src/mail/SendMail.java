package mail;

import java.util.Date;
import java.util.HashMap;
import java.util.Properties;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public abstract class SendMail {
	// 메일 서버 주소
	private String mailHost = "smtp.naver.com";
	// 보내는 사람의 메일 주소
	private final String senderName = "ama949@naver.com";
	// 보내는 사람의 비밀번호
	private final String senderPassword = "skdltm11a";
	// 서버와 통신하기 위한 포트 번호
	private int mailServerPort = 465;
	
	private Properties props;
	private Session session;
	
	public void sendMailProcess(HashMap<String, String> map) {
		HashMap<String, String> mailInfo = setSubjectAndContents(map); 
		// 메일 제목과 내용을 설정하는 메서드
		// 받는 사람 주소, 보낼 메일의 제목, 보낼 메일의 내용을 담고 있는 HashMap을 리턴한다.
		setMailServer(); // 메일 서버를 설정하는 메서드
		setMailSession(); // 메일 보내는 사이트의 세션을 생성하는 메서드
		sendMailToUser(mailInfo); // 위에서 얻은 메일의 정보를 토대로 메일 전송 작업을 하는 메서드
	}
	
	public abstract HashMap<String, String> setSubjectAndContents(HashMap<String, String> map);
	
	public void setMailServer(){
		props = System.getProperties();
		props.put("mail.smtp.host", mailHost);
		props.put("mail.smtp.port", mailServerPort);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", mailHost);
	}
	
	public void setMailSession(){
		session = Session.getDefaultInstance(props,
				new javax.mail.Authenticator() {
					String un = senderName;
					String pw = senderPassword;

					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(un, pw);
					}
				});
		session.setDebug(true); // for debug
	}
	
	public void sendMailToUser(HashMap<String, String> mailInfo){
		Message msg = new MimeMessage(session);
		try {
			msg.setFrom(new InternetAddress(senderName));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(
					mailInfo.get("recipientMailAddress")));
			msg.setSubject(mailInfo.get("mailSubject"));
			msg.setSentDate(new Date());
			// 파일 첨부시에는 BodyPart를 사용
			// msg.setText(body);

			// 파일첨부를 위한 Multipart
			Multipart multipart = new MimeMultipart();

			// BodyPart를 생성
			BodyPart bodyPart = new MimeBodyPart();
			if(mailInfo.get("typeOfMail").equals("recommendProduct")){
				// 고객 상품 추천 메일의 경우 메일에 이미지가 포함되기 때문에 setContent 메서드 이용
				bodyPart.setContent(mailInfo.get("mailContents"),"text/html; charset=EUC-KR");
			} else { 
				// 이외의 경우에는 메일에 텍스트만 포함되므로 setText 메서드 이용
				bodyPart.setText(mailInfo.get("mailContents"));
			}

			// Multipart에 BodyPart를 붙인다.
			multipart.addBodyPart(bodyPart);

			// 이메일 메시지의 내용에 Multipart를 붙인다.
			msg.setContent(multipart);
			Transport.send(msg);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
