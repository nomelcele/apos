package ex1;

import javax.servlet.http.HttpServletRequest;

public class RequestInFo {

	public String RequestInFo(HttpServletRequest request) {
		StringBuffer sb = new StringBuffer();
		sb.append("<p>");
		sb.append("클라이언트 IP:").append(request.getRemoteAddr());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("요청정보 길이:").append(request.getContentLength());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("요청정보 인코딩:").append(request.getCharacterEncoding());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("요청정보 컨텐트타입:").append(request.getContentType());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("요청정보 프로토콜:").append(request.getProtocol());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("요청정보 wjsthdqkdtlr:").append(request.getMethod());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("요청URI:").append(request.getRequestURI());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("컨텍스트 경로:").append(request.getContextPath());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("서버이름:").append(request.getServerName());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("서버포트:").append(request.getServerPort());
		sb.append("</p>");
		return sb.toString();
	}
}