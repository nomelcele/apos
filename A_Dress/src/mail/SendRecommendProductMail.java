package mail;

import java.util.HashMap;

public class SendRecommendProductMail extends SendMail{

	@Override
	public HashMap<String, String> setSubjectAndContents(
			HashMap<String, String> map) {
		String recipientName = map.get("name"); // 받는 사람의 이름
		String recommendedProductNamePrice = map.get("res"); // 추천할 상품의 이름과 가격
		String recommendedProductImg = map.get("img");
		
		String mailSubject = "ADRESS-맞춤  추천"; // 보낼 메일의 제목
		String mailContents = 	"<html><body><div style=\"z-index: 1; position: relative; margin-left: 45px;\">"
				+ "<img src='http://localhost/A_Dress/product/mail2.jpg' style=\"width: 80%;\">"
				+ "<table style=\"margin-top:-35%; font-family: '210 나무고딕'\"><tr><td>"
				+ recipientName
				+ "님 "
				+ "안녕하세요</td></tr><tr><td>맞춤 추천이 도착했습니다.</td></tr>"
				+ "<tr><td>"
				+ recommendedProductNamePrice
				+ "</td></tr>"
				+ "<tr><td><img src='http://localhost/A_Dress/product/"
				+ recommendedProductImg
				+ "' style=\"width: 100px;\"></td></tr></table></div></body></html>"; // 보낼 메일의 내용
		
		HashMap<String, String> mailInfo = new HashMap<String, String>();
		mailInfo.put("recipientMailAddress", map.get("mail")); // 받는 사람의 메일 주소
		mailInfo.put("mailSubject", mailSubject); // 보낼 메일의 제목
		mailInfo.put("mailContents", mailContents); // 보낼 메일의 내용
		mailInfo.put("typeOfMail", "recommendProduct"); // 보낼 메일의 종류
		
		return mailInfo;
	}

}
