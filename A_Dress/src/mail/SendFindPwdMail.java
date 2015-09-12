package mail;

import java.util.HashMap;

public class SendFindPwdMail extends SendMail{
	// 비밀번호 찾기 메일 전송

	@Override
	public HashMap<String, String> setSubjectAndContents(
			HashMap<String, String> map) {
		String recipientName = map.get("name"); // 받는 사람의 이름
		String recipientPwd = map.get("recipientPwd"); // 받는 사람의 비밀번호
		
		String mailSubject = "ADRESS - PWD 찾기 결과입니다."; // 보낼 메일의 제목
		String mailContents = "\"" + recipientName + "\"님의" + "\n\r" + 
		"PWD는 : " + recipientPwd + "\n\r" + "감사합니다"; // 보낼 메일의 내용
		
		HashMap<String, String> mailInfo = new HashMap<String, String>();
		mailInfo.put("recipientMailAddress", map.get("mail")); // 받는 사람의 메일 주소
		mailInfo.put("mailSubject", mailSubject); // 보낼 메일의 제목
		mailInfo.put("mailContents", mailContents); // 보낼 메일의 내용
		mailInfo.put("typeOfMail", "findPwd"); // 보낼 메일의 종류
		
		return mailInfo;
	}

}
