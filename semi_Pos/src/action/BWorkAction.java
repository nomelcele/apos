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
			//파일 업로드를 위해서 Part를 생성
			System.out.println("씨케이보드확인");
			Part part = null;
			try {
				part = request.getPart("upload");
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("-------------------------");
			System.out.println("Part : "+part);
			//파일이름 가져오기
			String fileName = getFileName(part);
			System.out.println("name123123 : "+fileName);
			//파일 이름이 있으면 업로드
			if(fileName != null && fileName.length() != 0){
				part.write(fileName);
			}
			//chk callback설정 : Ajax로 넘어온 요청을 response 해주기 위한 설정
			String callback = request.getParameter("CKEditorFuncNum");

			String fileUrl = "../upload/"+fileName;//url경로
			request.setAttribute("callback", callback);
			request.setAttribute("fileUrl", fileUrl);
			url = "callback.jsp";
			method=false;
			
		}else if(subcmd != null && subcmd.equals("insert")){
			//자동으로 파라미터를 받아서 처리해주는 주요 핵심 코드
			HashMap<String, String> maps = MyMap.getMaps().getMapList(request);
			System.out.println("DAO직전");
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
