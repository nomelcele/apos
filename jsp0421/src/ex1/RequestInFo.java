package ex1;

import javax.servlet.http.HttpServletRequest;

public class RequestInFo {

	public String RequestInFo(HttpServletRequest request) {
		StringBuffer sb = new StringBuffer();
		sb.append("<p>");
		sb.append("Ŭ���̾�Ʈ IP:").append(request.getRemoteAddr());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("��û���� ����:").append(request.getContentLength());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("��û���� ���ڵ�:").append(request.getCharacterEncoding());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("��û���� ����ƮŸ��:").append(request.getContentType());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("��û���� ��������:").append(request.getProtocol());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("��û���� wjsthdqkdtlr:").append(request.getMethod());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("��ûURI:").append(request.getRequestURI());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("���ؽ�Ʈ ���:").append(request.getContextPath());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("�����̸�:").append(request.getServerName());
		sb.append("</p>");
		sb.append("<p>");
		sb.append("������Ʈ:").append(request.getServerPort());
		sb.append("</p>");
		return sb.toString();
	}
}