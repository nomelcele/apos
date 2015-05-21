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
			
		}
		return new ActionForward(url, false);
	}

}
