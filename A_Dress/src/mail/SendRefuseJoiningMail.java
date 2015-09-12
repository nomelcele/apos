package mail;

import java.util.HashMap;

public class SendRefuseJoiningMail extends SendMail {

	@Override
	public HashMap<String, String> setSubjectAndContents(
			HashMap<String, String> map) {
		String recipientName = map.get("name"); // 받는 사람의 이름
		String hotkey = map.get("hotkey"); // 핫키
		
		String mailSubject = "ADRESS - 매장 가입을 거절당했습니다"; // 보낼 메일의 제목
		String mailContents = "\""+recipientName+"\"님" + "안녕하세요~"+"\n\r"+
		"회사 규정상 회원 가입처리가 거절 되었습니다"+"\n\r"+"감사합니다"; // 보낼 메일의 내용
		
		HashMap<String, String> mailInfo = new HashMap<String, String>();
		mailInfo.put("recipientMailAddress", map.get("mail")); // 받는 사람의 메일 주소
		mailInfo.put("mailSubject", mailSubject); // 보낼 메일의 제목
		mailInfo.put("mailContents", mailContents); // 보낼 메일의 내용
		mailInfo.put("typeOfMail", "refuseJoining"); // 보낼 메일의 종류
		
		return mailInfo;
	}

}
