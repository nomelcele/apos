package mail;

import java.util.HashMap;

public class SendRefuseJoiningMail extends SendMail {

	@Override
	public HashMap<String, String> setSubjectAndContents(
			HashMap<String, String> map) {
		String recipientName = map.get("name"); // �޴� ����� �̸�
		String hotkey = map.get("hotkey"); // ��Ű
		
		String mailSubject = "ADRESS - ���� ������ �������߽��ϴ�"; // ���� ������ ����
		String mailContents = "\""+recipientName+"\"��" + "�ȳ��ϼ���~"+"\n\r"+
		"ȸ�� ������ ȸ�� ����ó���� ���� �Ǿ����ϴ�"+"\n\r"+"�����մϴ�"; // ���� ������ ����
		
		HashMap<String, String> mailInfo = new HashMap<String, String>();
		mailInfo.put("recipientMailAddress", map.get("mail")); // �޴� ����� ���� �ּ�
		mailInfo.put("mailSubject", mailSubject); // ���� ������ ����
		mailInfo.put("mailContents", mailContents); // ���� ������ ����
		mailInfo.put("typeOfMail", "refuseJoining"); // ���� ������ ����
		
		return mailInfo;
	}

}
