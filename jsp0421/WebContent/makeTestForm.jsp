<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script>
$(function(){
	//��ü���� üũ�ڽ��� Ŭ������ ��쿡 �̹�Ʈ �߻�
	$('.inchkAll').click(function(){
		//is(:checked):��ü ���� üũ�ڽ��� ������ �Ǿ��� �� ����
		if($(this).is(':checked')){
			//��� üũ�ڽ��� �Ӽ��� checked�� �߰��ؼ� �װ��� true-> üũ�� ����
			//attr(�Ӽ���,�Ӽ���)
			//<img src='�̹������'>
			//\$('img').attr('src','�̹������');
			$('.inchk').attr('checked',true);
		}else{
			$('.inchk').attr('checked',false);
		}
	});
});</script>
</head>
<body>
<form method="post" action="viewParameter.jsp"method="post">
�̸�<input type="text" name="name" size="10"><br>
�ּ�<input type="text" name="address" size="30"><br>
<input type="checkbox" id="chkAll" class="inchkAll">
��ü����<div>
�����ϴ� ����:
<input type="checkbox"name="pet" class="inchk" checked="checked" value="dog">������
<input type="checkbox"name="pet" class="inchk" value="cat">�����
<input type="checkbox"name="pet" class="inchk" value="pig">����
<input type="checkbox"name="pet" class="inchk" value="eagles">������
<input type="checkbox"name="pet" class="inchk" value="elegator">�Ǿ�

<input type="submit" value="����">
</div>
</form>

</body>
</html>