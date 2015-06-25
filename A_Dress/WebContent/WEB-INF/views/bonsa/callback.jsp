<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- Ajax로 Callback받을 CKEDITOR형식의 함수.
	ckeditor에서 쿼리스트림으로 넘어오는 화면의 번호, 실제파일주소, 팝업메시지 --%>
<script type='text/javascript'>
window.parent.CKEDITOR.tools.callFunction('${callback}', '${fileUrl}', '이미지를 업로드하였습니다.');
</script>