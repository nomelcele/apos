package mail;

import java.util.HashMap;

public class SendConfirmJoiningMail extends SendMail{
	// ���� Ȯ�� ���� �߼�
	
	@Override
	public HashMap<String, String> setSubjectAndContents(HashMap<String, String> map) {
		String recipientName = map.get("name"); // �޴� ����� �̸�
		String hotkey = map.get("hotkey"); // ��Ű
		
		String mailSubject = "ADRESS - ���� ������ ȯ���մϴ�"; // ���� ������ ����
		String mailContents = "\""+recipientName+"\"��" + "ȯ���մϴ�~"
		+"\n\r"+"Hotkey : "+hotkey; // ���� ������ ����
		
		HashMap<String, String> mailInfo = new HashMap<String, String>();
		mailInfo.put("recipientMailAddress", map.get("mail")); // �޴� ����� ���� �ּ�
		mailInfo.put("mailSubject", mailSubject); // ���� ������ ����
		mailInfo.put("mailContents", mailContents); // ���� ������ ����
		mailInfo.put("typeOfMail", "confirmJoining"); // ���� ������ ����
		
		return mailInfo;
	}

}
