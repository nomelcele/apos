package mail;

import java.util.HashMap;

public class SendRecommendProductMail extends SendMail{

	@Override
	public HashMap<String, String> setSubjectAndContents(
			HashMap<String, String> map) {
		String recipientName = map.get("name"); // �޴� ����� �̸�
		String recommendedProductNamePrice = map.get("res"); // ��õ�� ��ǰ�� �̸��� ����
		String recommendedProductImg = map.get("img");
		
		String mailSubject = "ADRESS-����  ��õ"; // ���� ������ ����
		String mailContents = 	"<html><body><div style=\"z-index: 1; position: relative; margin-left: 45px;\">"
				+ "<img src='http://localhost/A_Dress/product/mail2.jpg' style=\"width: 80%;\">"
				+ "<table style=\"margin-top:-35%; font-family: '210 �������'\"><tr><td>"
				+ recipientName
				+ "�� "
				+ "�ȳ��ϼ���</td></tr><tr><td>���� ��õ�� �����߽��ϴ�.</td></tr>"
				+ "<tr><td>"
				+ recommendedProductNamePrice
				+ "</td></tr>"
				+ "<tr><td><img src='http://localhost/A_Dress/product/"
				+ recommendedProductImg
				+ "' style=\"width: 100px;\"></td></tr></table></div></body></html>"; // ���� ������ ����
		
		HashMap<String, String> mailInfo = new HashMap<String, String>();
		mailInfo.put("recipientMailAddress", map.get("mail")); // �޴� ����� ���� �ּ�
		mailInfo.put("mailSubject", mailSubject); // ���� ������ ����
		mailInfo.put("mailContents", mailContents); // ���� ������ ����
		mailInfo.put("typeOfMail", "recommendProduct"); // ���� ������ ����
		
		return mailInfo;
	}

}
