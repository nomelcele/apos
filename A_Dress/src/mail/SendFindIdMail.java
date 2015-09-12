package mail;

import java.util.HashMap;

public class SendFindIdMail extends SendMail {
	// 아이디 찾기 메일 발송
	
	@Override
	public HashMap<String, String> setSubjectAndContents(
			HashMap<String, String> map) {
		String recipientName = map.get("name"); // 받는 사람의 이름
		String recipientId = map.get("recipientId"); // 받는 사람의 아이디
		
		String mailSubject = "ADRESS - ID 찾기 결과입니다."; // 보낼 메일의 제목
		String mailContents = "\"" + recipientName + "\"님의" + "\n\r" + 
		"ID는 : " + recipientId + "\n\r" + "감사합니다"; // 보낼 메일의 내용
		
		HashMap<String, String> mailInfo = new HashMap<String, String>();
		mailInfo.put("recipientMailAddress", map.get("mail")); // 받는 사람의 메일 주소
		mailInfo.put("mailSubject", mailSubject); // 보낼 메일의 제목
		mailInfo.put("mailContents", mailContents); // 보낼 메일의 내용
		mailInfo.put("typeOfMail", "findId"); // 보낼 메일의 종류
		
		return mailInfo;
	}

}
