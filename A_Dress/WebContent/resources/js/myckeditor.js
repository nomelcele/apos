/**
 * 
 */
function chkUpload(){
	//해당이름으로 된 textarea에 에디터를 적용
	CKEDITOR.replace('content',{
		width:'80%',
		height:'350px',
		//여기 경로로 파일을 전달하여 업로드 시킨다.
		filebrowserImageUploadUrl: 'bon_ckboard'
	});
	CKEDITOR.on('dialogDefinition', function( ev ){
		var dialogName = ev.data.name;
		var dialogDefinition = ev.data.definition;
		
		switch(dialogName){
		case 'image': //Image Properties dialog
			//dialogDefinition.removeContents('info');
			dialogDefinition.removeContents('Link');
			dialogDefinition.removeContents('advanced');
			break;
			
		}
	});
	
}