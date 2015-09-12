package mail;

import java.util.HashMap;

public class SendFindIdMail extends SendMail {
	// ���̵� ã�� ���� �߼�
	
	@Override
	public HashMap<String, String> setSubjectAndContents(
			HashMap<String, String> map) {
		String recipientName = map.get("name"); // �޴� ����� �̸�
		String recipientId = map.get("recipientId"); // �޴� ����� ���̵�
		
		String mailSubject = "ADRESS - ID ã�� ����Դϴ�."; // ���� ������ ����
		String mailContents = "\"" + recipientName + "\"����" + "\n\r" + 
		"ID�� : " + recipientId + "\n\r" + "�����մϴ�"; // ���� ������ ����
		
		HashMap<String, String> mailInfo = new HashMap<String, String>();
		mailInfo.put("recipientMailAddress", map.get("mail")); // �޴� ����� ���� �ּ�
		mailInfo.put("mailSubject", mailSubject); // ���� ������ ����
		mailInfo.put("mailContents", mailContents); // ���� ������ ����
		mailInfo.put("typeOfMail", "findId"); // ���� ������ ����
		
		return mailInfo;
	}

}
