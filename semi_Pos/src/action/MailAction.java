package action;

import java.io.IOException;
import java.util.Date;
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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;

public class MailAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String subcmd =  request.getParameter("subcmd");
		String url="bon_shopJoin.jsp";
		boolean method = false;
		if(subcmd.equals("ok")){
				// 메일 관련 정보
				String mail = request.getParameter("mail");
				String name = request.getParameter("name");
				String hotkey = request.getParameter("hotkey");
				
				System.out.println("--------여기는 YES 메일 보내는 곳--------");
				System.out.println("MAIL : "+mail);
				System.out.println("NAME : "+name);
				System.out.println("HOTKEY : "+hotkey);
				
				String host = "smtp.naver.com";
		        final String username = "ama949@naver.com"; // 보내는 사람 네이버  ID
		        final String password = "skdltm11a"; // 비밀번호
		        int port=465;
		         
		        // 메일 내용
		        String recipient = mail; // 받는 사람 E-Mail
		        String subject = "APOS - 매장 가입을 환영합니다";
		        String body = "\""+name+"\"님" + "환영합니다~"+"\n\r"+"Hotkey : "+hotkey;
		         
		        Properties props = System.getProperties();
		         
		         
		        props.put("mail.smtp.host", host);
		        props.put("mail.smtp.port", port);
		        props.put("mail.smtp.auth", "true");
		        props.put("mail.smtp.ssl.enable", "true");
		        props.put("mail.smtp.starttls.enable","true");  
		        props.put("mail.smtp.ssl.trust", host);
		          
		        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		            String un=username;
		            String pw=password;
		            protected PasswordAuthentication getPasswordAuthentication() {
		                return new PasswordAuthentication(un, pw);
		            }
		        });
		        session.setDebug(true); //for debug
		          
		        Message msg = new MimeMessage(session);
		        try {
					msg.setFrom(new InternetAddress(username));
					msg.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
					msg.setSubject(subject);
					msg.setSentDate(new Date());
					// 파일 첨부시에는 BodyPart를 사용
					// msg.setText(body);
					
					// 파일첨부를 위한 Multipart
					Multipart multipart = new MimeMultipart();
					
					// BodyPart를 생성
					BodyPart bodyPart = new MimeBodyPart();
					bodyPart.setText(body);
					
					// 1. Multipart에 BodyPart를 붙인다.
					multipart.addBodyPart(bodyPart);
					
					// 이메일 메시지의 내용에 Multipart를 붙인다.
					msg.setContent(multipart);
					Transport.send(msg);
				} catch (MessagingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		}else if(subcmd.equals("no")){
			// 메일 관련 정보
			String mail = request.getParameter("mail");
			String name = request.getParameter("name");
			String hotkey = request.getParameter("hotkey");
			
			System.out.println("--------여기는 NO 메일 보내는 곳--------");
			System.out.println("MAIL : "+mail);
			System.out.println("NAME : "+name);
			System.out.println("HOTKEY : "+hotkey);
			
			String host = "smtp.naver.com";
	        final String username = "ama949@naver.com"; // 보내는 사람 네이버  ID
	        final String password = "skdltm11a"; // 비밀번호
	        int port=465;
	         
	        // 메일 내용
	        String recipient = mail; // 받는 사람 E-Mail
	        String subject = "APOS - 매장 가입을 환영합니다";
	        String body = "\""+name+"\"님" + "안녕하세요~"+"\n\r"+"회사 규정상 회원 가입처리가 거절 되었습니다"+"\n\r"+"감사합니다";
	         
	        Properties props = System.getProperties();
	         
	         
	        props.put("mail.smtp.host", host);
	        props.put("mail.smtp.port", port);
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.ssl.enable", "true");
	        props.put("mail.smtp.starttls.enable","true");  
	        props.put("mail.smtp.ssl.trust", host);
	          
	        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
	            String un=username;
	            String pw=password;
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(un, pw);
	            }
	        });
	        session.setDebug(true); //for debug
	          
	        Message msg = new MimeMessage(session);
	        try {
				msg.setFrom(new InternetAddress(username));
				msg.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
				msg.setSubject(subject);
				msg.setSentDate(new Date());
				// 파일 첨부시에는 BodyPart를 사용
				// msg.setText(body);
				
				// 파일첨부를 위한 Multipart
				Multipart multipart = new MimeMultipart();
				
				// BodyPart를 생성
				BodyPart bodyPart = new MimeBodyPart();
				bodyPart.setText(body);
				
				// 1. Multipart에 BodyPart를 붙인다.
				multipart.addBodyPart(bodyPart);
				
				// 이메일 메시지의 내용에 Multipart를 붙인다.
				msg.setContent(multipart);
				Transport.send(msg);
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(subcmd.equals("findid")){
			// 메일 관련 정보
						String mail = request.getParameter("mail");
						String name = request.getParameter("name");
						String id = request.getParameter("id");
						
						System.out.println("--------여기는 FIND ID 메일 보내는 곳--------");
						System.out.println("MAIL : "+mail);
						System.out.println("NAME : "+name);
						System.out.println("ID : "+id);
						
						String host = "smtp.naver.com";
				        final String username = "ama949@naver.com"; // 보내는 사람 네이버  ID
				        final String password = "skdltm11a"; // 비밀번호
				        int port=465;
				         
				        // 메일 내용
				        String recipient = mail; // 받는 사람 E-Mail
				        String subject = "APOS - ID 찾기 결과입니다.";
				        String body = "\""+name+"\"님의" +"\n\r"+"ID는 : "+id+"\n\r"+"감사합니다";
				         
				        Properties props = System.getProperties();
				         
				         
				        props.put("mail.smtp.host", host);
				        props.put("mail.smtp.port", port);
				        props.put("mail.smtp.auth", "true");
				        props.put("mail.smtp.ssl.enable", "true");
				        props.put("mail.smtp.starttls.enable","true");  
				        props.put("mail.smtp.ssl.trust", host);
				          
				        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				            String un=username;
				            String pw=password;
				            protected PasswordAuthentication getPasswordAuthentication() {
				                return new PasswordAuthentication(un, pw);
				            }
				        });
				        session.setDebug(true); //for debug
				          
				        Message msg = new MimeMessage(session);
				        try {
							msg.setFrom(new InternetAddress(username));
							msg.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
							msg.setSubject(subject);
							msg.setSentDate(new Date());
							// 파일 첨부시에는 BodyPart를 사용
							// msg.setText(body);
							
							// 파일첨부를 위한 Multipart
							Multipart multipart = new MimeMultipart();
							
							// BodyPart를 생성
							BodyPart bodyPart = new MimeBodyPart();
							bodyPart.setText(body);
							
							// 1. Multipart에 BodyPart를 붙인다.
							multipart.addBodyPart(bodyPart);
							
							// 이메일 메시지의 내용에 Multipart를 붙인다.
							msg.setContent(multipart);
							Transport.send(msg);
						} catch (MessagingException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
		}else if(subcmd.equals("findpwd")){
			// 메일 관련 정보
			String mail = request.getParameter("mail");
			String name = request.getParameter("name");
			String pwd = request.getParameter("pwd");
			
			System.out.println("--------여기는 FIND ID 메일 보내는 곳--------");
			System.out.println("MAIL : "+mail);
			System.out.println("NAME : "+name);
			System.out.println("PWD : "+pwd);
			
			String host = "smtp.naver.com";
	        final String username = "ama949@naver.com"; // 보내는 사람 네이버  ID
	        final String password = "skdltm11a"; // 비밀번호
	        int port=465;
	         
	        // 메일 내용
	        String recipient = mail; // 받는 사람 E-Mail
	        String subject = "APOS - ID 찾기 결과입니다.";
	        String body = "\""+name+"\"님의" +"\n\r"+"PWD는 : "+pwd+"\n\r"+"감사합니다";
	         
	        Properties props = System.getProperties();
	         
	         
	        props.put("mail.smtp.host", host);
	        props.put("mail.smtp.port", port);
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.ssl.enable", "true");
	        props.put("mail.smtp.starttls.enable","true");  
	        props.put("mail.smtp.ssl.trust", host);
	          
	        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
	            String un=username;
	            String pw=password;
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(un, pw);
	            }
	        });
	        session.setDebug(true); //for debug
	          
	        Message msg = new MimeMessage(session);
	        try {
				msg.setFrom(new InternetAddress(username));
				msg.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
				msg.setSubject(subject);
				msg.setSentDate(new Date());
				// 파일 첨부시에는 BodyPart를 사용
				// msg.setText(body);
				
				// 파일첨부를 위한 Multipart
				Multipart multipart = new MimeMultipart();
				
				// BodyPart를 생성
				BodyPart bodyPart = new MimeBodyPart();
				bodyPart.setText(body);
				
				// 1. Multipart에 BodyPart를 붙인다.
				multipart.addBodyPart(bodyPart);
				
				// 이메일 메시지의 내용에 Multipart를 붙인다.
				msg.setContent(multipart);
				Transport.send(msg);
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
}
		
		
		return new ActionForward(url, method);
	}

	
}
