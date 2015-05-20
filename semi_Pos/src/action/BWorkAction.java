package action;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import util.MyMap;
import controller.ActionForward;
import dao.BoardDao;

public class BWorkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String childcmd = request.getParameter("childcmd");
		String url="bon_index.jsp";
		boolean method= false;
		if(subcmd != null && subcmd.equals("notice")){
				url="bon_workNotice.jsp";	
		}else if(subcmd != null && subcmd.equals("in")){
				url="bon_workNoticeWriter.jsp";
		}else if(subcmd != null && subcmd.equals("ckBoard")){
			//���� ���ε带 ���ؼ� Part�� ����
			System.out.println("�����̺���Ȯ��");
			Part part = null;
			try {
				part = request.getPart("upload");
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("-------------------------");
			System.out.println("Part : "+part);
			//�����̸� ��������
			String fileName = getFileName(part);
			System.out.println("name123123 : "+fileName);
			//���� �̸��� ������ ���ε�
			if(fileName != null && fileName.length() != 0){
				part.write(fileName);
			}
			//chk callback���� : Ajax�� �Ѿ�� ��û�� response ���ֱ� ���� ����
			String callback = request.getParameter("CKEditorFuncNum");

			String fileUrl = "../upload/"+fileName;//url���
			request.setAttribute("callback", callback);
			request.setAttribute("fileUrl", fileUrl);
			url = "callback.jsp";
			method=false;
			
		}else if(subcmd != null && subcmd.equals("insert")){
			//�ڵ����� �Ķ���͸� �޾Ƽ� ó�����ִ� �ֿ� �ٽ� �ڵ�
			HashMap<String, String> maps = MyMap.getMaps().getMapList(request);
			System.out.println("DAO����");
			BoardDao.getDao().insert(maps);
			
			url="*.apos?cmd=bwork&subcmd=boardList&page=1";
			method=true;
		}else if(subcmd != null && subcmd.equals("move")){
			url="bon_workMove.jsp";
		}
		return new ActionForward(url, false);
	}
	private String getFileName(Part part){
    	String fileName="";
    	String header = part.getHeader("content-disposition");
    	System.out.println(header);
    	String[] elements = header.split(";");
    	for(String element : elements){
    		if(element.trim().startsWith("filename")){
    			fileName = element.substring(element.indexOf('=')+1);
    			fileName = fileName.trim().replace("\"", "");
    		}
    	}
    	return fileName;
    }

}
