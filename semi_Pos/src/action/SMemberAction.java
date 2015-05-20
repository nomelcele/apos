package action;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.MyMap;
import controller.ActionForward;
import dao.ShDao;

public class SMemberAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String url="sh_index.jsp";
		boolean method= false;
		if(subcmd.equals("join")){
			url="sh_memberJoin.jsp";
		}else if(subcmd.equals("check")){
			url="sh_memberCheck.jsp";
		} else if(subcmd.equals("change")){
			url="sh_memberChange.jsp";
		} else if(subcmd.equals("out")){
			url="sh_memberOut.jsp";
		} else if(subcmd.equals("insert")){
			HashMap<String, String>maps = MyMap.getMaps().getMapList(request);
			ShDao.getDao().insertMem(maps);
			//String str= request.getParameter("name");
			//System.out.println("test23"+str);
			String testData = request.getParameter("name");
			String [] charset = {"KSC5601", "8859_1", "ASCII", "UTF-8", "EUC-KR", "MS949"};
			 
			for( int i = 0 ; i < charset.length ; i++ ) {
			  for( int j = 0 ; j < charset.length ; j ++ ) {
			     try {
			       System.out.println(charset[i] + " : " + charset[j] + " = " + new String(testData.getBytes(charset[i]), charset[j]));
			     } catch (Exception e) {
			     }
			  }
			}
		}
		return new ActionForward(url, false);
	}

}
