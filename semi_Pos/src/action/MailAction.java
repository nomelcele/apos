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
				// ���� ���� ����
				String mail = request.getParameter("mail");
				String name = request.getParameter("name");
				String hotkey = request.getParameter("hotkey");
				
				System.out.println("--------����� YES ���� ������ ��--------");
				System.out.println("MAIL : "+mail);
				System.out.println("NAME : "+name);
				System.out.println("HOTKEY : "+hotkey);
				
				String host = "smtp.naver.com";
		        final String username = "ama949@naver.com"; // ������ ��� ���̹�  ID
		        final String password = "skdltm11a"; // ��й�ȣ
		        int port=465;
		         
		        // ���� ����
		        String recipient = mail; // �޴� ��� E-Mail
		        String subject = "APOS - ���� ������ ȯ���մϴ�";
		        String body = "\""+name+"\"��" + "ȯ���մϴ�~"+"\n\r"+"Hotkey : "+hotkey;
		         
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
					// ���� ÷�νÿ��� BodyPart�� ���
					// msg.setText(body);
					
					// ����÷�θ� ���� Multipart
					Multipart multipart = new MimeMultipart();
					
					// BodyPart�� ����
					BodyPart bodyPart = new MimeBodyPart();
					bodyPart.setText(body);
					
					// 1. Multipart�� BodyPart�� ���δ�.
					multipart.addBodyPart(bodyPart);
					
					// �̸��� �޽����� ���뿡 Multipart�� ���δ�.
					msg.setContent(multipart);
					Transport.send(msg);
				} catch (MessagingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		}else if(subcmd.equals("no")){
			// ���� ���� ����
			String mail = request.getParameter("mail");
			String name = request.getParameter("name");
			String hotkey = request.getParameter("hotkey");
			
			System.out.println("--------����� NO ���� ������ ��--------");
			System.out.println("MAIL : "+mail);
			System.out.println("NAME : "+name);
			System.out.println("HOTKEY : "+hotkey);
			
			String host = "smtp.naver.com";
	        final String username = "ama949@naver.com"; // ������ ��� ���̹�  ID
	        final String password = "skdltm11a"; // ��й�ȣ
	        int port=465;
	         
	        // ���� ����
	        String recipient = mail; // �޴� ��� E-Mail
	        String subject = "APOS - ���� ������ ȯ���մϴ�";
	        String body = "\""+name+"\"��" + "�ȳ��ϼ���~"+"\n\r"+"ȸ�� ������ ȸ�� ����ó���� ���� �Ǿ����ϴ�"+"\n\r"+"�����մϴ�";
	         
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
				// ���� ÷�νÿ��� BodyPart�� ���
				// msg.setText(body);
				
				// ����÷�θ� ���� Multipart
				Multipart multipart = new MimeMultipart();
				
				// BodyPart�� ����
				BodyPart bodyPart = new MimeBodyPart();
				bodyPart.setText(body);
				
				// 1. Multipart�� BodyPart�� ���δ�.
				multipart.addBodyPart(bodyPart);
				
				// �̸��� �޽����� ���뿡 Multipart�� ���δ�.
				msg.setContent(multipart);
				Transport.send(msg);
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(subcmd.equals("findid")){
			// ���� ���� ����
						String mail = request.getParameter("mail");
						String name = request.getParameter("name");
						String id = request.getParameter("id");
						
						System.out.println("--------����� FIND ID ���� ������ ��--------");
						System.out.println("MAIL : "+mail);
						System.out.println("NAME : "+name);
						System.out.println("ID : "+id);
						
						String host = "smtp.naver.com";
				        final String username = "ama949@naver.com"; // ������ ��� ���̹�  ID
				        final String password = "skdltm11a"; // ��й�ȣ
				        int port=465;
				         
				        // ���� ����
				        String recipient = mail; // �޴� ��� E-Mail
				        String subject = "APOS - ID ã�� ����Դϴ�.";
				        String body = "\""+name+"\"����" +"\n\r"+"ID�� : "+id+"\n\r"+"�����մϴ�";
				         
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
							// ���� ÷�νÿ��� BodyPart�� ���
							// msg.setText(body);
							
							// ����÷�θ� ���� Multipart
							Multipart multipart = new MimeMultipart();
							
							// BodyPart�� ����
							BodyPart bodyPart = new MimeBodyPart();
							bodyPart.setText(body);
							
							// 1. Multipart�� BodyPart�� ���δ�.
							multipart.addBodyPart(bodyPart);
							
							// �̸��� �޽����� ���뿡 Multipart�� ���δ�.
							msg.setContent(multipart);
							Transport.send(msg);
						} catch (MessagingException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
		}else if(subcmd.equals("findpwd")){
			// ���� ���� ����
			String mail = request.getParameter("mail");
			String name = request.getParameter("name");
			String pwd = request.getParameter("pwd");
			
			System.out.println("--------����� FIND ID ���� ������ ��--------");
			System.out.println("MAIL : "+mail);
			System.out.println("NAME : "+name);
			System.out.println("PWD : "+pwd);
			
			String host = "smtp.naver.com";
	        final String username = "ama949@naver.com"; // ������ ��� ���̹�  ID
	        final String password = "skdltm11a"; // ��й�ȣ
	        int port=465;
	         
	        // ���� ����
	        String recipient = mail; // �޴� ��� E-Mail
	        String subject = "APOS - ID ã�� ����Դϴ�.";
	        String body = "\""+name+"\"����" +"\n\r"+"PWD�� : "+pwd+"\n\r"+"�����մϴ�";
	         
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
				// ���� ÷�νÿ��� BodyPart�� ���
				// msg.setText(body);
				
				// ����÷�θ� ���� Multipart
				Multipart multipart = new MimeMultipart();
				
				// BodyPart�� ����
				BodyPart bodyPart = new MimeBodyPart();
				bodyPart.setText(body);
				
				// 1. Multipart�� BodyPart�� ���δ�.
				multipart.addBodyPart(bodyPart);
				
				// �̸��� �޽����� ���뿡 Multipart�� ���δ�.
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
