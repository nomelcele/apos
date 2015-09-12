package mail;

import java.util.HashMap;

public class SendFindPwdMail extends SendMail{
	// ��й�ȣ ã�� ���� ����

	@Override
	public HashMap<String, String> setSubjectAndContents(
			HashMap<String, String> map) {
		String recipientName = map.get("name"); // �޴� ����� �̸�
		String recipientPwd = map.get("recipientPwd"); // �޴� ����� ��й�ȣ
		
		String mailSubject = "ADRESS - PWD ã�� ����Դϴ�."; // ���� ������ ����
		String mailContents = "\"" + recipientName + "\"����" + "\n\r" + 
		"PWD�� : " + recipientPwd + "\n\r" + "�����մϴ�"; // ���� ������ ����
		
		HashMap<String, String> mailInfo = new HashMap<String, String>();
		mailInfo.put("recipientMailAddress", map.get("mail")); // �޴� ����� ���� �ּ�
		mailInfo.put("mailSubject", mailSubject); // ���� ������ ����
		mailInfo.put("mailContents", mailContents); // ���� ������ ����
		mailInfo.put("typeOfMail", "findPwd"); // ���� ������ ����
		
		return mailInfo;
	}

}
