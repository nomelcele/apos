<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- Ajax�� Callback���� CKEDITOR������ �Լ�.
	ckeditor���� ������Ʈ������ �Ѿ���� ȭ���� ��ȣ, ���������ּ�, �˾��޽��� --%>
<script type='text/javascript'>
window.parent.CKEDITOR.tools.callFunction('${callback}', '${fileUrl}', '�̹����� ���ε��Ͽ����ϴ�.');
</script>