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
	// ���� ���� �ּ�
	private String mailHost = "smtp.naver.com";
	// ������ ����� ���� �ּ�
	private final String senderName = "ama949@naver.com";
	// ������ ����� ��й�ȣ
	private final String senderPassword = "skdltm11a";
	// ������ ����ϱ� ���� ��Ʈ ��ȣ
	private int mailServerPort = 465;
	
	private Properties props;
	private Session session;
	
	public void sendMailProcess(HashMap<String, String> map) {
		HashMap<String, String> mailInfo = setSubjectAndContents(map); 
		// ���� ����� ������ �����ϴ� �޼���
		// �޴� ��� �ּ�, ���� ������ ����, ���� ������ ������ ��� �ִ� HashMap�� �����Ѵ�.
		setMailServer(); // ���� ������ �����ϴ� �޼���
		setMailSession(); // ���� ������ ����Ʈ�� ������ �����ϴ� �޼���
		sendMailToUser(mailInfo); // ������ ���� ������ ������ ���� ���� ���� �۾��� �ϴ� �޼���
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
			// ���� ÷�νÿ��� BodyPart�� ���
			// msg.setText(body);

			// ����÷�θ� ���� Multipart
			Multipart multipart = new MimeMultipart();

			// BodyPart�� ����
			BodyPart bodyPart = new MimeBodyPart();
			if(mailInfo.get("typeOfMail").equals("recommendProduct")){
				// �� ��ǰ ��õ ������ ��� ���Ͽ� �̹����� ���ԵǱ� ������ setContent �޼��� �̿�
				bodyPart.setContent(mailInfo.get("mailContents"),"text/html; charset=EUC-KR");
			} else { 
				// �̿��� ��쿡�� ���Ͽ� �ؽ�Ʈ�� ���ԵǹǷ� setText �޼��� �̿�
				bodyPart.setText(mailInfo.get("mailContents"));
			}

			// Multipart�� BodyPart�� ���δ�.
			multipart.addBodyPart(bodyPart);

			// �̸��� �޽����� ���뿡 Multipart�� ���δ�.
			msg.setContent(multipart);
			Transport.send(msg);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
